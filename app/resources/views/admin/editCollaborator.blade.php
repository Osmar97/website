<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Dashboard</title>
        
        {{-- CSS --}}
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/dashboard.css">


        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- JS --}}
        <script src="./js/search.js" defer></script>
        <script src="./js/userDetails.js" defer></script>
    

    </head>

    <body>

        @include('admin/contentHTML/sidebar')

        <main>

            @include('admin/contentHTML/header')


            <form name="formContact" class="contactForm" action="/updatePersonalData" method="Post">

            <h3>Edit Profile</h3>

                <div class="alert warning">
                    
                    <p>This password should have at least:</p>
                    <ul>
                        <li>8 caracters</li>
                        <li>1 uppercase letter</li>
                        <li>1 lowercase letter</li>
                        <li>1 special caracter</li>
                    </ul>
                
                </div>

                @if(session()->has('userError'))
                            
                    <div class="alert">
                            <span class="closebtn">&times;</span>
                            {{ session()->get('userError') }}
                    </div>

                @endif

                @if(session()->has('success'))
                            
                    <div class="alert success">
                            <span class="closebtn">&times;</span>
                            {{ session()->get('success') }}
                    </div>

                @endif

                @csrf    
                
                <div class="formItem borderRedInput active" id="floatContainer">

                    <label for="floatField" ><i class="fas fa-user"></i> Enter your name </label>
                    <input  id="floatField" type="text"  name="name" class="name" value="{{ $user->name }}" require>

                </div>

                <p class="texterror" id="nameError">Name must be filled!</p>

                <div class="formItem borderRedInput active" id="floatContainer">

                    <label for="floatField" ><i class="fa fa-envelope"></i> Enter your email </label>
                    <input  id="floatField" type="email" name="user" class="user active" value="{{ $user->email }}" require>

                </div>

                <p class="texterror" id="userError">Email must be filled!</p>

                <div class="showPassword" style="margin-top:30px">
                    <input type="checkbox" id="new-password"  name="changePassword" /> <p> Change Password</p>
                </div>

                <div class="formItem" id="floatContainer">

                    <label for="floatField"> <i class="fa fa-lock"></i> Enter old password</label>
                    <input id="floatField" disabled type="password" id="oldPassword" name="oldPassword" class="oldPassword" require>

                </div>

                <p class="texterror" id="oldPasswordError">Old Password must be filled!</p>

                <div class="formItem" id="floatContainer">

                    <label for="floatField"> <i class="fa fa-lock"></i> Enter new your password</label>
                    <input id="floatField" disabled type="password" id="password" name="password" class="password" require>
                    
                </div>

                <p class="texterror" id="passwordError">Password must be filled!</p>

                <div class="formItem" id="floatContainer">

                    <label for="floatField"> <i class="fa fa-lock"></i> Confirm new your password</label>
                    <input id="floatField" disabled type="password" id="cPassword" name="cPassword" class="cPassword" require>

                </div>

                <p class="texterror" id="cPasswordError">Confirm Password must be filled!</p>

                <div class="showPassword">

                    <input type="checkbox" id="toggle-password" /> <p> Show Password </p>

                </div>

                <input type="submit" class="submit" value="Update your profile">

        </form>


        </main>


    </body>

</html>
