
window.addEventListener('load', ()=>{

    var userPage = document.querySelector("#userPage");
    var logout = document.querySelector("#logoutPage");

    userPage.addEventListener("click", ()=>{

        window.location = "/profile";

    });

    logout.addEventListener("click", ()=>{

        window.location = "/logout";

    });

});



