<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;

class ReviewsController extends Controller
{
    public function index()
    {
        $reviews = Review::with('soluation','user')
            ->paginate(10);
        return view('reviews.index',compact('reviews'));
    }

    public function confirm($id) {
        $review = Review::find($id);
        if ($review) {
            Review::where('id',$id)->update(['status'=>5]);
        }
        return redirect()->route('reviews')->with('success', 'Review updated successfully');

    }
}
