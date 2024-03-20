<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    public function index() {
        if (Auth::check()) {
            return redirect('/');
        }
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');
        Log::debug('Login attempt with credentials:', $credentials);

        if (Auth::attempt($credentials)) {
            Log::debug('Authentication successful');
            return redirect()->intended('/dashboard');
        }

        Log::debug('Authentication failed');
        return back()->withErrors(['email' => 'Invalid credentials']);
    }
}
