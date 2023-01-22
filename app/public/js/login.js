const password = document.querySelector(".password");
const togglePassword = document.getElementById("toggle-password");

togglePassword.addEventListener("click", toggleClicked);

function toggleClicked() {
    password.classList.toggle("visible");
    if (this.checked) {
        password.type = "text";
    } else {
        password.type = "password";
    }
}

const loginForm = document.querySelector(".contactForm");

const userError = document.querySelector("#userError");
const passError = document.querySelector("#passwordError");


var validRegexEmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

loginForm.addEventListener('submit', (e) => {

    let email = document.querySelector(".contactForm .formItem .user");
    let pass = document.querySelector(".contactForm .formItem .password");
    let i = 0;


    if (email.value.match(validRegexEmail)) {

        userError.style.display = "none";

    } else {

        userError.style.display = "block";
        email.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        userError.textContent = "This email is invalid!";
        i = i + 1;

    }

    if (pass.value === "") {
        passError.style.display = "block";
        pass.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        i = i + 1;

    } else {
        passError.style.display = "none";

    }

    if (i > 0) {

        e.preventDefault();

    } else {

    }
    //.right .contactForm .texterror

});