<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;

class dashboardUser extends Controller
{
    
    public function index()
    {
        $user = Auth::user();
        //return $user;
        return view('admin/dashboard', [
            'user' => $user,
         ]);

    }

    public function showUser(){
        
        $user = Auth::user();
        return view("admin/editUser", 
        [ 
            'user' => $user,
        ]);
    }



}
