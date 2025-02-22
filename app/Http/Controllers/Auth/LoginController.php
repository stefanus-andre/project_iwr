<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except('logout'); // Remove parent::__construct()
    }

    public function showLoginForm()
    {
        return view('welcome'); // Ensure you have resources/views/auth/login.blade.php
    }


    public function login(Request $request)
    {
        $credentials = $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
        ]);
    
        // Attempt to log in using username
        if (Auth::attempt(['name' => $credentials['username'], 'password' => $credentials['password']])) {
            return redirect()->intended('/admin/dashboard'); // ✅ Correct Redirect
        }
    
        return back()->withErrors(['message' => 'Invalid credentials']);
    }
    

    public function logout(Request $request)
    {
        Auth::logout();
        return redirect('/login');
    }
}
