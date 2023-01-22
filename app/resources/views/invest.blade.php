<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>{{ trans('messages.menuInvest') }}</title>

        {{-- CSS --}}
        <link rel="stylesheet" href="css/materialize.css">
        <link rel="stylesheet" href="css/carousel.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/about.css">
        <link rel="stylesheet" href="css/servicos.css">
       
        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">


        {{-- JS --}}
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js" integrity="sha512-NiWqa2rceHnN3Z5j6mSAvbwwg3tiwVNxiAQaaSMSXnRRDh5C2mk/+sKQRw8qjV1vN4nf8iK2a0b048PnHbyx+Q==" crossorigin="anonymous" referrerpolicy="no-referrer" defer></script>
        <script src="js/carousel.js" defer></script>
        <script src="js/cookie.js" defer></script>

                

    </head>

    <body>

    <div class="content">
        @include('htmlContents/menu')
        @include('htmlContents/load')
        <main>
            <div class="contentFunc">

                <div class="headerIntroCompany">
                    
                    <h1>
                    {{ trans('messages.menuInvest') }}
                    </h1>
                    
                    <hr class="introBar">

                    <div class="row slider-center">

                        <i class="fas fa-angle-left prev" id="prev"></i>
                        <i class="fas fa-angle-right next" id="next"></i>

                    </div>

                    <div class="carousel" id="carousel">


                        <?php
                            foreach($invests as $servicos => $item){
                        ?>                       
                            <div class="carousel-item"> 
                                <img src="./img/KingServices/Invest/{{ $item['nome'] }}/{{ $item['iconValue'] }}"> 
                                <p>{{ $item["nome"] }}</p>
                            </div>
                        <?php
                            }    
                        ?>

                    </div>


                </div>
            </div>
        </main>
    </div>
    @include('htmlContents/cookie')
    @include('htmlContents/footer')
    
</body>

</html>
