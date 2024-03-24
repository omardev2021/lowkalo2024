<?php

namespace App\Http\Controllers;

use App\Models\Letter;
use Illuminate\Http\Request;

class LetterController extends Controller
{
    public function index() {
        $letters = Letter::all();
        return view('letters.index',compact('letters'));
    }
}
