<!DOCTYPE html>

<html lang="en">



    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>{{ trans('messages.menuHome') }}</title>
         
        {{-- CSS --}}
        <link rel="stylesheet" href="css/main.css">

        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- JS --}}
        <script src="js/home.js" defer></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js" ></script>
        <script src="js/menu.js" defer></script>
        <script src="js/cookie.js" defer></script>

    </head>

    <body>

        

        <div class="content">

            
            @include('htmlContents/menu')
            @include('htmlContents/load')

    
            <main>

                <div class="centerred">
                    
                    <h1> 
                        {{ trans('messages.welcomeTitleP1') }} 
                        <br>
                        {{ trans('messages.welcomeTitleP2') }}
                    </h1>

                    <p>  {{ trans('messages.welcomeMessage') }} </p>
                    <p>  {{ trans('messages.welcomeMessage2') }} </p>

                    <a href="/contacts">
                        <button>{{ trans('messages.welcomeButtom') }}</button>
                    </a>

                </div>

            </main>
        </div>

            @include('htmlContents/footer')


    @include('htmlContents/cookie')



    </body>

</html>