<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index() {
        $users = User::with('reviews')->get();
        return view('users.index',compact('users'));
    }

    public function reviews($id) {
        $reviews = Review::where('user_id',$id)->get();
        return view('users.reviews',compact('reviews'));
    }
}
