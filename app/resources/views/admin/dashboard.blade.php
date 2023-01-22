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

    </head>

    <body>

        @include('admin/contentHTML/sidebar')

        <main>

            @include('admin/contentHTML/header')
            <h1> 
                Welcome {{ $user->name}} !
            </h1>


            <div class="cards">

                <div class="card">
                    
                    <h3>Number of visits</h3> 
                    <hr>
                    <h1>100</h1>

                </div>

                <div class="card">
                    <h3>Number of collaborators</h3>
                    <hr>
                    <h1>100</h1>
                </div>
                
                <div class="card">
                    <h3> Number of Services </h3>
                    <hr>
                    <h1>100</h1>
                </div>

                <div class="card">
                    <h3> Number of Invests </h3>
                    <hr>
                    <h1>100</h1>
                </div>

                <div class="card">
                    <h3> Number of Buys </h3>
                    <hr>
                    <h1>100</h1>
                </div>

                <div class="card">
                    <h3> Number of Sells </h3>
                    <hr>
                    <h1>100</h1>
                </div>
                <div class="card">
                    <h3> Number of Rents </h3>
                    <hr>
                    <h1>100</h1>
                </div>
            </div>



        </main>


    </body>

</html>
