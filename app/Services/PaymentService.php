<?php

namespace App\Services;

use Illuminate\Http\Request;
use App\Models\Client;
use Ramsey\Uuid\Type\Integer;
use App\Models\Payment;
use App\Models\Coupon;
use Illuminate\Support\Facades\Session;
class PaymentService
{


    public function payment(Request $request,$total,$url,$lastPrice)
    {
        $idorder = 'PHP_' . rand(1, 1000); //Customer Order ID


//        $terminalId = "lowkalo"; // Will be provided by URWAY
//        $password = "URWAY_KALO@2695"; // Will be provided by URWAY
//        $merchant_key = "6b1a1dc0ecaccc57dd93db0ca38a5fddadfa2c39036ce69c6cb0f103d70321ad"; // Will be provided by URWAY
//        $currencycode = "SAR";
//        $amount = $total;
//        $txn_details = $idorder . '|' . $terminalId . '|' . $password . '|' . $merchant_key . '|' . $amount . '|' . $currencycode;
//        $hash = hash('sha256', $txn_details);

        $terminalId = "lowkalo"; // Will be provided by URWAY
        $password = "lowkalo@7867"; // Will be provided by URWAY
        $merchant_key = "fa58bd331c779c328fb9618e383fc5968205481ca340ae9688f012919bbbf0bd"; // Will be provided by URWAY
        $currencycode = "SAR";
        $amount = $total;
        $txn_details = $idorder . '|' . $terminalId . '|' . $password . '|' . $merchant_key . '|' . $amount . '|' . $currencycode;
        $hash = hash('sha256', $txn_details);



        $fields = array(
            'trackid' => $idorder,
            'terminalId' => $terminalId,
            'customerEmail' => auth()->user()->email,
            'action' => "1",  // action is always 1
            'merchantIp' => $request->ip(),
            'password' => $password,
            'currency' => $currencycode,
            'country' => "SA",
            'amount' => $lastPrice,
            "udf1"              => "Test1",
            "udf2"              => $url, //Response page URL
            "udf3"              => "ar",
            "udf4"              => "",
            "udf5"              => "Test5",
            'requestHash' => $hash  //generated Hash
        );
        $data = json_encode($fields);
//        $ch = curl_init('https://payments.urway-tech.com/URWAYPGService/transaction/jsonProcess/JSONrequest');
        $ch = curl_init('https://payments-dev.urway-tech.com/URWAYPGService/transaction/jsonProcess/JSONrequest');

        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data)
            )
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $server_output = curl_exec($ch);
        //close connection
        curl_close($ch);
        $result = json_decode($server_output);
        if (!empty($result->payid) && !empty($result->targetUrl)) {
            $url = $result->targetUrl . '?paymentid=' .  $result->payid;
            //    return $url;
            if (Session::has('coupon')) {
                $co = session()->get('coupon')['coupon_name'];
                $coupon = Coupon::where('coupon_name',  $co)->first();

                $payment =     Payment::create([
                    'user_id' => auth()->user()->id,
                    'coupon_id' =>  $coupon->id,
                    'amount'=>$total

                ]);
                Session::put('payment_id',$payment->id);
            } else {
                $payment =       Payment::create([
                    'user_id' => auth()->user()->id,
                    'amount'=>$total

                ]);
                Session::put('payment_id',$payment->id);
            }

            return redirect($url);
            // header('Location: '. $url, true, 307);//Redirect to Payment Page
        } else {
            return redirect()->back();
            // print_r($result);
            // echo "<br/><br/>";
            // print_r($data);
            // die();
        }
    }

    public function payment_guest(Request $request)
    {
        $user =   Client::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,


        ]);
        $id = $user->id;

        $dis = 0;
        $total = 0;
        $sub = 0;


        if (Session::has('coupon')) {
            $cou = session()->get('coupon')['coupon_name'];
            $coupon = Coupon::where('coupon_name', $cou)->first();
            $total = round(75 - 75 * $coupon->coupon_discount / 100);
            $dis = round(75 * $coupon->coupon_discount / 100);
            $sub = 75;
            // $url = "https://www.lowkalo.com/status-guest?name=".$user->name."&uremail=".$user->email."&urid=".$id."&phone=".$user->phone."&urtotal=".$total."&coupon=".$cou;

            // dd( $total);
        } else {

            $total = 75;
            $sub = 75;
            $dis = 0;
            // $url = "https://www.lowkalo.com/status-guest?name=".$user->name."&uremail=".$user->email."&urid=".$id."&phone=".$user->phone."&urtotal=".$total;

            // dd( $total);
        }
        // $email = $user->email;

        $url = "https://www.lowkalo.com/status-guest?name=".$user->name."&uremail=".$user->email."&urid=".$id."&phone=".$user->phone."&urtotal=".$total;

        $idorder = 'PHP_' . rand(1, 1000); //Customer Order ID

        $terminalId = "lowkalo"; // Will be provided by URWAY
        $password = "URWAY_KALO@2695"; // Will be provided by URWAY
        $merchant_key = "6b1a1dc0ecaccc57dd93db0ca38a5fddadfa2c39036ce69c6cb0f103d70321ad"; // Will be provided by URWAY
        $currencycode = "SAR";
        $amount = $total;
        $txn_details = $idorder . '|' . $terminalId . '|' . $password . '|' . $merchant_key . '|' . $amount . '|' . $currencycode;
        $hash = hash('sha256', $txn_details);

//        $terminalId = "lowkalo"; // Will be provided by URWAY
//        $password = "lowkalo@7867"; // Will be provided by URWAY
//        $merchant_key = "fa58bd331c779c328fb9618e383fc5968205481ca340ae9688f012919bbbf0bd"; // Will be provided by URWAY
//        $currencycode = "SAR";
//        $amount = $total;
//        $txn_details = $idorder . '|' . $terminalId . '|' . $password . '|' . $merchant_key . '|' . $amount . '|' . $currencycode;
//        $hash = hash('sha256', $txn_details);

// $myurl = "https://www.lowkalo.com/status-guest?name=".$user->name."&uremail=".$user->email."&urid=".$id."&phone=".$user->phone."&urtotal=".$total;

        $name = str_replace(' ', '', $user->name);
        $email = str_replace(' ', '', $user->email);
        $phone = str_replace(' ', '', $user->phone);
        $myurl = "https://www.lowkalo.com/status-guest?name=$name&uremail=$email&urid=$id&phone=$phone&urtotal=$total";

        $fields = array(
            'trackid' => $idorder,
            'terminalId' => $terminalId,
            'customerEmail' => $email,
            'action' => "1",  // action is always 1
            'merchantIp' => $request->ip(),
            'password' => $password,
            'currency' => $currencycode,
            'country' => "SA",
            'amount' => $amount,
            "udf1"              => "Test1",
            "udf2"              => $myurl, //Response page URL
            "udf3"              => "ar",
            "udf4"              => "",
            "udf5"              => "Test5",
            'requestHash' => $hash  //generated Hash
        );
        $data = json_encode($fields);

//        $ch = curl_init('https://payments-dev.urway-tech.com/URWAYPGService/transaction/jsonProcess/JSONrequest');
        $ch = curl_init('https://payments.urway-tech.com/URWAYPGService/transaction/jsonProcess/JSONrequest');

        // Will be provided by URWAY
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data)
            )
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $server_output = curl_exec($ch);
        //close connection
        curl_close($ch);
        $result = json_decode($server_output);
        if (!empty($result->payid) && !empty($result->targetUrl)) {
            $url = $result->targetUrl . '?paymentid=' .  $result->payid;
            //    return $url;


            return redirect($url);
        } else {
            return redirect()->back();
            // print_r($result);
            // echo "<br/><br/>";
            // print_r($data);
            // die();
        }
    }



    public function payment_api(Request $request,$total,$url,$lastPrice)
    {
        $idorder = 'PHP_' . rand(1, 1000); //Customer Order ID


        // $terminalId = "lowkalo"; // Will be provided by URWAY
        // $password = "URWAY_KALO@2695"; // Will be provided by URWAY
        // $merchant_key = "6b1a1dc0ecaccc57dd93db0ca38a5fddadfa2c39036ce69c6cb0f103d70321ad"; // Will be provided by URWAY
        // $currencycode = "SAR";
        // $amount = $total;
        // $txn_details = $idorder . '|' . $terminalId . '|' . $password . '|' . $merchant_key . '|' . $amount . '|' . $currencycode;
        // $hash = hash('sha256', $txn_details);

        $terminalId = "lowkalo"; // Will be provided by URWAY
        $password = "lowkalo@7867"; // Will be provided by URWAY
        $merchant_key = "fa58bd331c779c328fb9618e383fc5968205481ca340ae9688f012919bbbf0bd"; // Will be provided by URWAY
        $currencycode = "SAR";
        $amount = $request->price;
        $txn_details = $idorder . '|' . $terminalId . '|' . $password . '|' . $merchant_key . '|' . $amount . '|' . $currencycode;
        $hash = hash('sha256', $txn_details);



        $fields = array(
            'trackid' => $idorder,
            'terminalId' => $terminalId,
            'customerEmail' => auth('sanctum')->user()->email,
            'action' => "1",  // action is always 1
            'merchantIp' => $request->ip(),
            'password' => $password,
            'currency' => $currencycode,
            'country' => "SA",
            'amount' => $amount,
            "udf1"              => "Test1",
            "udf2"              => $url, //Response page URL
            "udf3"              => "ar",
            "udf4"              => "",
            "udf5"              => "Test5",
            'requestHash' => $hash  //generated Hash
        );
        $data = json_encode($fields);
        // $ch = curl_init('https://payments.urway-tech.com/URWAYPGService/transaction/jsonProcess/JSONrequest');
        $ch = curl_init('https://payments-dev.urway-tech.com/URWAYPGService/transaction/jsonProcess/JSONrequest');

        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data)
            )
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $server_output = curl_exec($ch);
        //close connection
        curl_close($ch);
        $result = json_decode($server_output);
        if (!empty($result->payid) && !empty($result->targetUrl)) {
            $url = $result->targetUrl . '?paymentid=' .  $result->payid;
            //    return $url;
            if (Session::has('coupon')) {
                $co = session()->get('coupon')['coupon_name'];
                $coupon = Coupon::where('coupon_name',  $co)->first();

                $payment =     Payment::create([
                    'user_id' => auth('sanctum')->user()->id,
                    'coupon_id' =>  $coupon->id,
                    'amount'=>$total

                ]);
                Session::put('payment_id',$payment->id);
            } else {
                $payment =       Payment::create([
                    'user_id' => auth('sanctum')->user()->id,
                    'amount'=>$total

                ]);
                Session::put('payment_id',$payment->id);
            }


            return response()->json([
                'payment'=>$url,

            ], 200);
            // header('Location: '. $url, true, 307);//Redirect to Payment Page
        } else {
            return redirect()->back();
            // print_r($result);
            // echo "<br/><br/>";
            // print_r($data);
            // die();
        }
    }
}
