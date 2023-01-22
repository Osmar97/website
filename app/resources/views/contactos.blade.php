<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{{ trans('messages.menuContacts') }}</title>

        {{-- Fonts --}}  
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- CSS --}}
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/contact.css">
        <link rel="stylesheet" href="css/about.css">

        {{-- JS --}}
        <script src="js/cookie.js" defer></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js" defer></script>
        <script src="js/input.js" defer></script>
        <script src="js/contact.js" defer></script>

    </head>

    <body>

        @include('htmlContents/menu')

        <main>

            <h1>Contact Us</h1>

            <hr>

            <section class="introContacts">

            
                <div class="left">

                    <div class="row">

                        <h3>Kings 'n Company</h3>
                        <p>
                            <a href="tel:+351967333803">+351 967 333 803</a>
                            <a href="mailto:services@kingsncompany.com">services@kingsncompany.com</a>
                            Portugal
                        </p>

                    </div>

                </div>

                <div class="rightForm">

                    @if(session()->has('ErrorMessage'))
                            
                        <div class="alert">
                                <span class="closebtn">&times;</span>
                                {{ session()->get('ErrorMessage') }}
                        </div>

                     @endif
                        
                    

                    @if(session()->has('message'))

                        <div class="alert success">
                                <span class="closebtn">&times;</span>
                                {{ session()->get('message') }}
                        </div>
                    
                    @endif 

                    <form name="formContact" class="contactForm" action="/contacts" method="Post">
                    
                        @csrf    
                        <div class="formItem borderRedInput" id="floatContainer" >
    
                            <label for="floatField" ><i class="fa fa-user"></i>   Enter your name </label>
                            <input  id="floatField" type="text" name="nome" class="nome" require>

                        </div>
                        <p class="texterror" id="nameError">Name must be filled!</p>

                        <div class="formItem" id="floatContainer" tar>

                            <label for="floatField"> <i class="fa fa-phone"></i>  Enter your phone number</label>
                            <input  id="floatField" type="text" name="phoneNumber" class="phoneNumber" require>

                        </div>
                        
                        <p class="texterror" id="phoneError">Phone Number must be filled!</p>

                        <div class="formItem" id="floatContainer">

                            <label for="floatField"><i class="fa-solid fa-envelope"></i> Enter your email</label>
                            <input  id="floatField" type="text" name="email" class="email" require>

                        </div>
                        <p class="texterror" id="emailError">Email must be filled!</p>

                        <div class="formItem" id="floatContainer">

                            <label for="floatField"> <i class="fa-solid fa-inbox"></i> Enter your subject</label>
                            <input  id="floatField" type="text" name="subject" class="subject" require>

                        </div>
                        <p class="texterror" id="subjectError">Subject must be filled!</p>

                        <div class="formItem" id="floatContainer">

                            <label for="floatField"><i class="fa-solid fa-envelope-open-text"></i>Enter your message</label>
                            <textarea  id="floatField" type="text" name="message" class="message" require> </textarea>

                        </div>
                        <p class="texterror" id="messageError">Message must be filled!</p>



                        <input type="submit" class="submit" value="Send Email">

                    </form>

                </div>


            </section>

        

        </main>
        @include('htmlContents/cookie')
        @include('htmlContents/footer')
        

</html>
