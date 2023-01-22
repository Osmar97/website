<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>{{ trans('messages.menuGuides') }}</title>
        
        {{-- CSS --}}
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/about.css">
        <link rel="stylesheet" href="css/servicos.css">
        <link rel="stylesheet" href="css/guide.css">

        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- JS --}}

        <script src="js/menu.js" defer></script>
        <script src="js/modal.js" defer></script>
        <script src="js/cookie.js" defer></script>
        <script src="js/scrollingtext.js" defer></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/gsap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/ScrollTrigger.min.js"></script>

    </head>

    <body>

    <div class="content">

        @include('htmlContents/menu')

        <main>

            <div class="contentFunc">

                <h1>
                    Guides
                </h1>

                <hr class="introBar">

                <div class="wrapper">

                    <div class="box">

                        <div class="single-box">

                            <div class="img">
                                <img alt="Round_neck" src="./img/menuImages/Logo.png">
                            </div>
                            
                            <h3>Product Name</h3>

                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur doloremque adipisci quaerat consequatur esse</p>
                            
                            <a href="#demo-modal">
                                <button id="">Download</button>
                            </a> 

                        </div>
              
                        <div id="demo-modal" class="modal">
                            
                            <div class="modal__content">
                                <h1>Product</h1>
                                <p>
                                   Lorem ipsum dolor, sit amet consectetur adipisicing elit. 
                                   Maxime, ducimus animi et sed ad consequuntur maiores ipsum voluptates officia quam.
                                </p>
                                <div class="modal__footer">
                                    <button>Download</button>
                                    <p>Kings'n Company</p>
                                </div>

                                <a href="#" class="modal__close">&times;</a>
                            </div>
                    
                        </div>

                        <div class="single-box">

                            <div class="img"><img alt="Round_neck" src="./img/menuImages/Logo.png"></div>
                            <h3>Product Name</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur doloremque adipisci quaerat consequatur esse</p>
                            <button>Download</button>

                        </div>

                        <div class="single-box">
                        
                            <div class="img"><img alt="Round_neck" src="./img/menuImages/Logo.png"></div>
                            <h3>Product Name</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur doloremque adipisci quaerat consequatur esse</p>
                            <button>Download</button>
                        
                        </div>

                    </div>

	            </div>

                <script>
                            
                    document.getElementById("openMenu").addEventListener('click', 
                    (e)=>{
                        e.preventDefault();
                        document.getElementById("mySidenav").style.width = "100%"
                    });
                    document.querySelector(".closebtn").addEventListener('click',  (e)=>{
                        e.preventDefault();
                        document.getElementById("mySidenav").style.width = "0%";
                    });
        
        
                </script>


            </div>

        </main>



    </div>
    @include('htmlContents/cookie')
    @include('htmlContents/footer')
    
</body>

</html>
