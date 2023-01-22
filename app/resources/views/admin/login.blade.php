<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>{{ trans('messages.Admin') }}</title>
        
        {{-- CSS --}}
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/admin.css">

        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- JS --}}
        <script src="js/input.js" defer></script>
        <script src="js/login.js" defer></script>


    </head>

    <body>

        <form name="formContact" class="contactForm" action="/login" method="Post">
            
            <img src="./img/menuImages/bannerMenu.png" class="img">
            <h3>Sign in Here!</h3>
            
            @if(session()->has('loginError'))
                        
                <div class="alert">
                        <span class="closebtn">&times;</span>
                        {{ session()->get('loginError') }}
                </div>

            @endif

            @csrf    
            <div class="formItem borderRedInput" id="floatContainer">

                <label for="floatField" ><i class="fa fa-user"></i>Enter your email </label>
                <input  id="floatField" type="email" name="email" class="user" require>

            </div>

            <p class="texterror" id="userError">Email must be filled!</p>

            <div class="formItem" id="floatContainer">

                <label for="floatField"> <i class="fa fa-lock"></i>Enter your password</label>
                <input id="floatField" type="password" id="password" name="password" class="password" require>
                
            </div>
            <p class="texterror" id="passwordError">Password must be filled!</p>

            <div class="showPassword">

                <input type="checkbox" id="toggle-password" /> <p> Show Password </p>

            </div>

            <input type="submit" class="submit" value="Login">

        </form>
    
        @include('htmlContents/cookie') 
        
    </body>

</html>