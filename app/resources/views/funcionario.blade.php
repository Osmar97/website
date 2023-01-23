<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Kings ‘n Company</title>
        
        {{-- CSS --}}
        <link rel="stylesheet" href="../css/main.css">
        <link rel="stylesheet" href="../css/about.css">
        <link rel="stylesheet" href="../css/funcionario.css">

        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- JS --}}

        <script src="../js/scrollingtext.js" defer></script>
        <script src="../js/cookie.js" defer></script>
        <script src="../js/funcionario.js" defer></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/gsap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/ScrollTrigger.min.js"></script>

    </head>

    <body>

            @include('../htmlContents/menuInfo')
    
    <main>

        <div class="contentFunc">

            <div class="profile">

                <div class="left" id="details">

                    <h2>{{ $funcionario->nomeFuncionario }}                     
                    
                    <?php
                        foreach($funcionario->positions as $position){
                        ?>
                            <span class="pro"> {{ $position->positionName }}</span>
                        <?php
                            }
                    ?>

                    </h2>   

                   
                    <p class="desc">

                    <?php
                        echo $funcionario->descricaoFuncionario
                    ?> 
                        
                    </p>

                    <div class="socialMedia">
                    <ul>    
                        <?php
                            foreach($funcionario->redesSociais as $redeSocial => $dados){
                        ?> 
                            <li><a href=" <?= $dados->pivot->socialMediaLink ?>" target="_blank"><i  class="<?= $dados['iconValue']; ?>"></i></a></li>
                        <?php
                            }   
                        ?>
                    </ul>    
                        
                    </div>

                </div>
                
                <div class="right" id="img"> 

                    @if($funcionario->imgFuncionario == "")

                        <img  src="../img/about/team/profile.png" alt="user"/>

                    @else

                        <img  src="../img/about/team/{{$funcionario->imgFuncionario}}" alt="user" />

                    @endif

                </div>

            </div>

            
        </div>

    </main>

    @include('../htmlContents/cookie')
    @include('../htmlContents/footer')

    <!-- Start of HubSpot Embed Code -->
  <script type="text/javascript" id="hs-script-loader" async defer src="//js-eu1.hs-scripts.com/26819153.js"></script>
<!-- End of HubSpot Embed Code -->
        
    </body>

</html>
