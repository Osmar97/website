<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>{{ trans('messages.menuAbout') }}</title>
        
        {{-- CSS --}}
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/about.css">

        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- JS --}}

        <script src="js/scrollingtext.js" defer></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/gsap.min.js"></script>
        <script src="js/cookie.js" defer></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/ScrollTrigger.min.js"></script>

    </head>

    <body>

    @include('htmlContents/menu')

    <main>

        <section class="introCompany">

            <div class="textCompany">

                <div class="left">

                    <img src="img/about/kingsncompany.png" alt="">

                </div>

                <div class="right">

                    <h1>
                        {{ trans('messages.aboutTitle') }}
                    </h1>

                    <p>
                        {{ trans('messages.aboutDescrP1') }}
                    </p>

                    <p>
                        {{ trans('messages.aboutDescrP2') }}
                    </p>
                    
                    <p>
                        <b> {{ trans('messages.aboutDescrP3') }} </b>
                    </p>

                    <ul>
                        <li>{{ trans('messages.aboutDescrLi1') }}</li>
                        <li>{{ trans('messages.aboutDescrLi2') }}</li>
                        <li>{{ trans('messages.aboutDescrLi3') }}</li>
                        <li>{{ trans('messages.aboutDescrLi4') }}</li>
                    </ul>

                </div>

            </div>

        </section>

        <section class="team">

            <h1 class="revealUp">
                {{ trans('messages.aboutTitleTeam') }}
            </h1>

            <div class="func">

                @foreach($funcionarios as $funcionario)

                    <div class="card-container revealUp">

                        <?php
                            foreach($funcionario->positions as $position){
                        ?>
                            <span class="pro"> {{ $position->positionName }}</span>
                        <?php
                            }
                        ?>
                        @if($funcionario->imgFuncionario == "")
                            <img class="round" src="img/about/team/profile.png" alt="user"/>
                        @else
                            <img class="round" src="img/about/team/{{$funcionario->imgFuncionario}}" alt="user" />
                        @endif

                        <h3>{{ $funcionario->nomeFuncionario}}</h3>

                        <?php 
                            $id = $funcionario->id;
                        ?>                 

                        <div class="buttons">

                            <form action="/collaborator" method="post">

                                @csrf
                                <input type="hidden" name="EmployeeId" value="{{$funcionario->id}}">

                                <a href="" class="hyperlink">
                                    <input type="submit" value="+ Info" class="primary">
                                </a>

                            </form>

                            {{-- <a href="/collaborator/{{$funcionario->id}}" class="hyperlink">

                                <button class="primary">+ Info</button>

                            </a> --}}
                            
                        </div>

                        <div class="skills">    
                            <ul>
                                <?php
                                    foreach($funcionario->funcoes as $funcao => $dados){
                                ?> 
                                    <li> <?= $dados['nomeFuncao']; ?></li>
                                <?php
                                    }
                                ?>
                            </ul>

                            <ul class="theList">

                                <?php
                                    foreach($funcionario->redesSociais as $redeSocial => $dados){
                                ?> 
                                    <li class="icons"> <a href=" <?= $dados->pivot->socialMediaLink ?>" target="_blank"><i  class="<?= $dados['iconValue']; ?>"></i></a></li>
                                <?php
                                    }   
                                ?>

                            </ul>

                        </div>

                    </div>

                @endforeach

            </div>

        </section>
        
        @include('htmlContents/cookie')
        @include('htmlContents/footer')  
        
        
    </body>

</html>
