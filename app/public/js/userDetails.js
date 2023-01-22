const password = document.querySelector(".password");
const cPassword = document.querySelector(".cPassword");
const oldPassword = document.querySelector(".oldPassword");


const togglePassword = document.getElementById("toggle-password");
const toggleNewPassword = document.getElementById("new-password");

togglePassword.addEventListener("click", toggleClicked);
toggleNewPassword.addEventListener("click", toogleChange);

function toogleChange(){

    if(this.checked){
        password.disabled  = false;
        cPassword.disabled  = false;
        oldPassword.disabled = false;
    }else{

        password.value = null;
        cPassword.value = null;
        oldPassword.value = null;


        password.disabled  = true;
        cPassword.disabled  = true;
        oldPassword.disabled = true;
    }

}

function toggleClicked() {
    password.classList.toggle("visible");
    if (this.checked) {
        oldPassword.type = "text"
        password.type = "text";
        cPassword.type = "text";
    } else {
        oldPassword.type = "password"
        password.type = "password";
        cPassword.type = "password";
    }
}

const loginForm = document.querySelector(".contactForm");

const nameError = document.querySelector("#nameError");
const userError = document.querySelector("#userError");
const passError = document.querySelector("#passwordError");
const cPassError = document.querySelector("#cPasswordError");
const oldPasswordError = document.querySelector("#oldPasswordError");


var validRegexEmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
var validRegexPassword = /^(?=.*[A-Z])(?=.*[!@#$%^&*])(?=.*[0-9])(?=.*[a-z]).{8,}$/;

loginForm.addEventListener('submit', (e) => {

    let name = document.querySelector(".contactForm .formItem .name");
    let email = document.querySelector(".contactForm .formItem .user");

    let pass = document.querySelector(".contactForm .formItem .password");
    let cpass = document.querySelector(".contactForm .formItem .cPassword");
    let oldPass = document.querySelector(".contactForm .formItem .oldPassword")

    let i = 0;

    if (name.value === "") {
        nameError.style.display = "block";
        name.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        i = i + 1;

    } else {
        nameError.style.display = "none";

    }


    if (email.value.match(validRegexEmail)) {

        userError.style.display = "none";

    } else {

        userError.style.display = "block";
        email.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        userError.textContent = "This email is invalid!";
        i = i + 1;

    }

    if(toggleNewPassword.checked == true){

        if (pass.value === "") {
            passError.style.display = "block";
            pass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
            i = i + 1;

        } else {
            passError.style.display = "none";

        }
        
        if (cpass.value === "") {
            cPassError.style.display = "block";
            cpass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
            i = i + 1;

        } else {
            cPassError.style.display = "none";
        }

        if (oldPass.value === "") {
            oldPasswordError.style.display = "block";
            oldPass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
            i = i + 1;

        } else {
            oldPasswordError.style.display = "none";
        }

}

    if (i > 0) {

        e.preventDefault();

    } else {

        if(cpass.value === pass.value){

            if(pass.value == ""){


            }else{

        
                if(validRegexPassword.test(pass.value)){

                }else{

                    e.preventDefault();
                    pass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
                    cpass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";

                }
        }

        }else{
            
            e.preventDefault();
            pass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
            pass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";

        }


    }
    //.right .contactForm .texterror

});