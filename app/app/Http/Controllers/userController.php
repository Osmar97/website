<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;


class userController extends Controller
{
    public function login(Request $request){


        $email = $request->get('email');
        $password =$request->get('password');
 
        $credentials = array(
            'email' => $email,
            'password' => $password
        );

        $user = User::where('email', $credentials["email"])->first();

        //return $user->password;

        if ($user && sha1($credentials['password']) == $user->password) {

            Auth::login($user);
            return redirect()->intended('dashboard'); 
        
        }else{

        }

        Session::flash('loginError', 'Wrong credentionals!');
        return redirect()->back();
        
       }

       public function updatePersonalDate(Request $request){

            $nome = $request->get("name");
            $email = $request->get("user");
            //$checkbox = $request->get("changePassword");
        
            //$checkbox = $request->validate([
            //    'changePassword' => 'required|accepted',
            //]);

            $user = User::where('email', $email)->first();
            $oldUser = Auth::user();
            $passDataBase = $oldUser->password;

            if($request->filled('changePassword')){
            
                $password = $request->get("oldPassword");
                $newPassword = $request->get("password");
                $ConfNewPassword = $request->get("cPassword");

                //return $password. "  ".$passDataBase;

                if(sha1($password) == $passDataBase){

                    $user->name = $nome;
                    $user->email = $email;
                    $user->password = sha1($newPassword);
                    
                    $user->save();

                    Session::flash('success', 'Updated successfully');
                    return redirect()->back();

                }else{

                    Session::flash('userError', 'Your current password does not match!');
                    return redirect()->back();
                }
                    

            }else{

                $user->name = $nome;
                $user->email = $email;
                $user->save();
                Auth::login($user);

                Session::flash('success', 'Updated successfully');
                return redirect()->back();

 
            }

            
            //$nome = $request->get("name");

       }


    }

