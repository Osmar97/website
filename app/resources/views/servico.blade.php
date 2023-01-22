<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Kings'n Company</title>

        {{-- Fonts --}}
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        
        {{-- Icons --}}
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="shortcut icon" href="../img/home/Logo3.png" type="image/x-icon">

        {{-- CSS --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        
        
        {{-- JS --}}
        <script src="../js/menu.js" defer></script>
        <script src="../js/cookie.js" defer></script>
        <script src="../js/modalServices.js" defer></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        

    </head>

    <body class="servicos">

        <main>
                
            <h3 class="subtitles">Services</h3>

            <h1>{{ $servico->nome }}</h1>
            
            <hr>
            <div class="oneService">
                <?php                        
                    foreach($servico->subServices as $serv => $dados){
                ?>

                    <div class="service">

                            <div class="buttonMore">    
                                <i class="{{$servico->iconValue}}"></i>
                            </div>

                            <h2>{{$dados->nomeServicosTypes}}</h4>

                            <div class="modalcontainer" id="{{$dados->id}}">

                                <div class="flex">

                                    <div class="modal">

                                        <div class="close" id="close{{$dados->id}}"><span>&#43;</span></div>

                                        <div class="content">

                                            <h2>Service Content</h2>
                                            
                                            <div class="text">
                                                
                                                <p>
                                                    <?php
                                                        echo str_replace(";", "</p><p>" ,$dados->descricaoServicos)
                                                    ?> 
                                                </p>

                                            </div>

                                        </div>

                                        <div class="buttons" id="buttons{{$dados->id}}">
                                            <a href="">Cancel</a>
                                            <a href="/contactos">Contact us!</a>
                                        </div>

                                    </div>

                                </div>

                            </div>
                            
                            <?php
                                if($dados->descricaoServicos == ""){
                                }
                                else{
                            ?>
                                <div class="buttonMore">
                                    <button id="btn{{$dados->id}}">Ver mais</button>
                                </div>                                
                            <?php
                                }
                            ?>
                    </div>

                <?php
                    }
                ?>
            </div>

        </main>

        @include('htmlContents/footer')
        
    </body>

</html>
