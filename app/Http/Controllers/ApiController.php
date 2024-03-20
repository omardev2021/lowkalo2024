<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Video;
use App\Models\Category;
use App\Models\Otp;
use App\Mail\OtpMail;
use App\Models\User;
use App\Models\Soluation;
use App\Models\Comment;
use App\Models\Review;
use App\Models\Coupon;
use App\Models\Letter;

use Illuminate\Support\Facades\Mail;
use Mailjet\Resources;
use Mailjet\Client;

use App\Services\PaymentService;
use Illuminate\Support\Facades\Session;



class ApiController extends Controller
{

    private PaymentService $paymentService;

    public function __construct(PaymentService $paymentService)
    {
        $this->paymentService = $paymentService;
    }


    public function videos() {
        $videos = Video::with('convertedvideos')->get();
        return response()->json([
            'data' => $videos
        ]);
    }

    public function video($id) {
        $videos = Video::where('id',$id)->with('convertedvideos','comments.user')->first();
        $comments = Comment::where('video_id',$id)->get();
        return response()->json($videos);
    }

    public function services() {
        $services = Category::with('soluations')->get();
        return response()->json([
            'data' => $services
        ]);
    }

    public function service($slug) {
        $services = Category::where('slug',$slug)->with('soluations')->first();
        return response()->json($services);
    }

    public function soluation($id) {
        $services = Soluation::where('id',$id)->with('reviews.user')->first();
        return response()->json($services);
    }







    public function auth_request(Request $request)
    {


        $request->validate([
            'email' => 'required|email|exists:users,email', // 1MB Max
        ]);

        // Insert OTP record into the database
        $otp = Otp::create([
            'email' => $request->email,
            'otp' => rand(1000, 9999), // Generate a random OTP
        ]);

        $this->send_email_helper($request->email, $otp->otp);

        return response()->json([
            'otp' => $otp->otp
        ]);


    }

    private function send_email_helper($email, $otp)
    {

        $mj = new Client('ee1e9da8ced6f41ef57b122fbaace13a', 'e87e6ba196ac29bcc483ce1bd5497024');
        $body = [
            'FromEmail' => "lowkalo.info@gmail.com",
            'FromName' => "Lowkalo",
            'Subject' => "رمز التحقق",
            'Text-part' => "رمز التحقق الخاص بك في لوكالو",
            'Html-part' => "<h3>رمز التحقق الخاص بك في لوكالو هو " . $otp . "</h3>",
            'Recipients' => [
                [
                    'Email' => $email,
                ],
            ],
        ];

        // Send the email
        $response = $mj->post(Resources::$Email, ['body' => $body]);

        // Check if the email sending was successful
        if (!$response->success()) {
            throw new \Exception('Email sending failed');
        }
    }

    public function login(Request $request) {
        $otp = $request->otp;
        $email = $request->email;

        $last = Otp::where('email', $email)->latest()->first();

        if ($request->otp == $last->otp) {
            $user = User::where('email',$email)->first();
            return response()->json([
                'user'=>$user,
                'token' => $user->createToken('API TOKEN FOR ' . $user->name)->plainTextToken

            ], 200);
        }

        return response()->json([
            'message'=>'otp not found',

        ], 404);


    }


    public function reg_request(Request $request)
    {


        $request->validate([
            'email' => 'required|email|unique:users,email', // 1MB Max
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->password = 'lo012929201102';
        $user->save();

        // Insert OTP record into the database
        $otp = Otp::create([
            'email' => $request->email,
            'otp' => rand(1000, 9999), // Generate a random OTP
        ]);

        $this->send_email_helper($request->email, $otp->otp);

        return response()->json([
            'otp' => $otp->otp
        ]);


    }


    public function purchase_guest(Request $request)

    {

        $this->validate($request,[
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'phone' => 'required|unique:users',

        ]);


        return  $this->paymentService->payment_guest($request);
    }

    public function buy_course(Request $request) {
        $user =    auth('sanctum')->user()->id;
        $lastPrice = $request->price;
        $url = "https://lowkalo.com/payment-status";
        //        $url =   "http://127.0.0.1:8000/status";
        $dis = 0;
        $total = 0;
        $sub = 0;
        if (Session::has('coupon')) {
            $cou = session()->get('coupon')['coupon_name'];
            $coupon = Coupon::where('coupon_name', $cou)->first();
            $total = round(75 - 75 * $coupon->coupon_discount / 100);
            $dis = round(75 * $coupon->coupon_discount / 100);
            $sub = 75;
            // dd( $total);


        } else {


            $total = 75;
            $sub = 75;
            $dis = 0;
            // dd( $total);
        }

        return  $this->paymentService->payment_api($request,$total,$url,$lastPrice);

    }


    public function payment_status(Request $request) {
        $user =    auth('sanctum')->user()->id;
        User::where('id',$user)->update(['subscribed' => 5]);

        $user = User::where('id',$user)->first();

        return response()->json([
            'user'=>$user,
            'token' => $user->createToken('API TOKEN FOR ' . $user->name)->plainTextToken

        ], 200);



    }



    public function saveComment(Request $request) {

        $videoId = $request->videoId;
        $userComment = $request->comment;
        $user =    auth('sanctum')->user();


        // $video = Video::find($videoId);

        $comment = new Comment();


        $comment->body = $request->body;
        $comment->user_id = $user->id;
        $comment->video_id = $videoId;


        $comment->save();

        return response()->json(['success' => true, 'message' => 'comment submitted']);

    }


    public function saveReview(Request $request) {

        $user = auth('sanctum')->user();

        $exist = Review::where('user_id',$user->id)->where('soluation_id',$request->soluationId)->first();
        if ($exist) {
            return response()->json(
                ['success' => false, 'message' => 'user submitted review']
                ,405);

        }
        $review = new Review();

        $review->notes = $request->notes;
        $review->user_id = $user->id;
        $review->soluation_id = $request->soluationId;
        $review->rate = $request->rate;

        if ($request->file('image_path')) {
            $file = $request->file('image_path');
            $filename = '/images/' . date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('images'), $filename);
            $review->image_path = $filename;
        }

        $review->save();

        return response()->json(['success' => true, 'message' => 'comment submitted']);


    }



    public function check(Request $request) {
        $cou = $request->coupon;
        $coupon = Coupon::where('coupon_name',$cou)->first();

        if ($coupon) {
            return response()->json($coupon,201);
        } else {
            return response()->json('coupon is incorrect',404);

        }
    }


    public function letter(Request $request)
    {
        $request->validate([
            'email' => 'required|unique:letters',
        ]);

        $letter = new Letter();
        $letter->email = $request->email;
        $letter->save();
        return response()->json('You have successfully subscribed to our newsletter',200);


    }

}
