<?php

namespace App\Http\Controllers;

use App\Mail\SignUp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
    use Illuminate\Support\Facades\Validator;
use App\Models\portugalinfos;


class MailController extends Controller
{

    
    public function sendMail(Request $request){

        $validator = Validator::make($request->all(), [

            'subject' => 'required',
            'message' => 'required',
            'nome'=> 'required',
            'phoneNumber' => 'required',
            'email' => 'required',

       ]);

       if ($validator->fails()){

            return redirect()->back()->with("loginError", "All fields must be filled!" );
            
       }
        
        $details = [
            
           'title' => $request->subject, 
           'subject' => $request->message,
           'name'=> $request->nome,
           'phoneNumber' => $request->phoneNumber,
           'email' => $request->email

        ];

    
        Mail::to("danielalmeida.da2003@gmail.com")
            ->cc($request->email)
            ->send(new SignUP($details));   

            return redirect()->back()->with("message", "Email sent successfully" );
        
    }

}
