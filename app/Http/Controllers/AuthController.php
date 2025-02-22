<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth; 

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
        ]);

        // Attempt to log in using username
        if (Auth::attempt(['name' => $credentials['username'], 'password' => $credentials['password']])) {
            $user = Auth::user();

            // Redirect based on role
            if ($user->role === 'admin') {
                return redirect()->intended('/admin/dashboard');
            } elseif ($user->role === 'sm') {
                return redirect()->intended('/sm/dashboard');
            } elseif ($user->role === 'am') {
                return redirect()->intended('/am/dashboard');
            } elseif ($user->role === 'rm') {
                return redirect()->intended('/rm/dashboard');
            }  elseif ($user->role === 'head') {
                return redirect()->intended('/head/dashboard');
            }

            // Default fallback if no role matches
            return redirect()->intended('/');
        }

        return back()->withErrors(['message' => 'Invalid credentials']);
    }
}
