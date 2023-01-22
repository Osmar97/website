

<div class="backColor">

    <header>

        <?php
            $locale = session()->get('locale');
        ?>

        <div class="right">

            {{-- English --}}
            <?php
                if ($locale == "en" or $locale == ""){
            ?>
                <a href="/lang/en">
                    <img src="img/menuImages/england.png" style="filter: grayscale(0%);" alt="" srcset="">
                </a>

            <?php
                }
                else{
            ?>

                <a href="/lang/en">
                    <img src="img/menuImages/england.png" alt="" srcset="">
                </a>

            <?php
                }
            ?>

            {{--

            <?php
                if ($locale == "pt"){
            ?>
                <a href="/lang/pt">
                    <img src="img/menuImages/portugal.png" style="filter: grayscale(0%);" alt="" srcset="">
                </a>

            <?php
                }
                else{
            ?>

                <a href="/lang/pt">
                    <img src="img/menuImages/portugal.png" alt="" srcset="">
                </a>

            <?php
                }
            ?>

            <?php
                if ($locale == "fr"){
            ?>
                <a href="/lang/fr">
                    <img src="img/menuImages/france.png" style="filter: grayscale(0%);" alt="" srcset="">
                </a>

            <?php
                }
                else{
            ?>

                <a href="/lang/fr">
                    <img src="img/menuImages/france.png" alt="" srcset="">
                </a>

            <?php
                }
            ?>


            <?php
                if ($locale == "es"){
            ?>
                <a href="/lang/es">
                    <img src="img/menuImages/spain.png" style="filter: grayscale(0%);" alt="" srcset="">
                </a>

            <?php
                }
                else{
            ?>

                <a href="/lang/es">
                    <img src="img/menuImages/spain.png" alt="" srcset="">
                </a>

            <?php
                }
            ?>
            --}}
        </div>

        <div class="center">
            <a href="/"><img class="headerLogo" src="./img/menuImages/bannerMenu.png" alt=""></a>
        </div>

    </header>

    
    <!-- Menu-->
        <nav class="nav-bar">

            <div class="logo">

            </div>

            <div class="nav-list">

                <ul>

                    <li class="nav-item active"><a href="/" class="nav-link">{{ trans('messages.menuHome') }}</a></li>

                    <li class="nav-item"><a href="/about" class="nav-link">{{ trans('messages.menuAbout') }}</a></li>

                    <li class="nav-item"><a href="/services" class="nav-link">{{ trans('messages.menuServices') }}</a></li>

                    <li class="nav-item"><a href="/invest" class="nav-link">{{ trans('messages.menuInvest') }}</a></li>

                    <li class="nav-item"><a href="/buy" class="nav-link">{{ trans('messages.menuBuy') }}</a></li>

                    <li class="nav-item"><a href="/sell" class="nav-link">{{ trans('messages.menuSell') }}</a></li>

                    <li class="nav-item"><a href="/rent" class="nav-link">{{ trans('messages.menuRent') }}</a></li> 

                    <li class="nav-item"><a href="/guides" class="nav-link">{{ trans('messages.menuGuides') }}</a></li>

                    {{--   <div class="dropdown">

                                <li class="nav-item">
                                    
                                        <a href="#" class="nav-link" id="portugalPage">{{ trans('messages.menuPortugal') }} <i class="fa-sharp fa-solid fa-caret-up rotate"></i> </i></a>

                                        <div class="dropdown-content">
                                        
                                        </div>
                                        
                                </li>

                            </div>
                    --}}   


                    <li class="nav-item"><a href="/contacts" class="nav-link">{{ trans('messages.menuContacts') }}</a></li>

                </ul>

            </div>

            <div class="logo">

            {{--<form class="searchform" action="">

                    <input type="search" placeholder="Search..." required>
                    <i class="fa fa-search"></i>
                
                </form>--}}

                <li class="nav-item-icon">
                <a href="#" class="nav-link" id="openMenu">
                    <i class="fa-solid fa-bars"></i>
                </a>

            </li>
            
            </div>

        </nav>

</div>

<div id="mySidenav" class="sidenav">
        
    {{--<form class="searchform" action="">
        <input type="search" placeholder="Search..." required>
        <i class="fa fa-search"></i>
    </form>--}}

    <a href="/" class="itemMenu">{{ trans('messages.menuHome') }}</a>
    <a href="/about" class="itemMenu">{{ trans('messages.menuAbout') }}</a>
    <a href="/services"  class="itemMenu">{{ trans('messages.menuServices') }}</a>
    <a href="/invest" class="itemMenu">{{ trans('messages.menuInvest') }}</a>
    <a href="/buy" class="itemMenu">{{ trans('messages.menuBuy') }}</a>
    <a href="/sell" class="itemMenu">{{ trans('messages.menuSell') }}</a>
    <a href="/rent" class="itemMenu">{{ trans('messages.menuRent') }}</a>
    <a href="/guides" class="itemMenu">{{ trans('messages.menuGuides') }}</a>
    <a href="/contacts" class="itemMenu">{{ trans('messages.menuContacts') }}</a>

</div>

<script>
        
        document.getElementById("openMenu").addEventListener('click', 
        (e)=>{
            
            e.preventDefault();

            let menuMobile = document.getElementById("mySidenav");
            if(menuMobile.style.opacity == 1){
                menuMobile.style.opacity = "0";
                menuMobile.style.zIndex = "-999999";
            }else{
                menuMobile.style.opacity = "1";
                menuMobile.style.zIndex = "999999999999999999999999";

            }

            let iconMenu = document.querySelector("#openMenu i");

            iconMenu.classList.toggle("fa-bars");
            iconMenu.classList.toggle("fa-xmark");


        });

    </script>
