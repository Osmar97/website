const contactForm = document.querySelector(".contactForm");

const nameError = document.querySelector("#nameError");
const phoneError = document.querySelector("#phoneError");
const emailError = document.querySelector("#emailError");
const subjectError = document.querySelector("#subjectError");
const messageError = document.querySelector("#messageError");

var validRegexEmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

contactForm.addEventListener('submit', (e) => {

    let name = document.querySelector(".rightForm .contactForm .formItem .nome");
    let email = document.querySelector(".rightForm .contactForm .formItem .email");
    let phone = document.querySelector(".rightForm .contactForm .formItem .phoneNumber");
    let subject = document.querySelector(".rightForm .contactForm .formItem .subject");
    let message = document.querySelector(".rightForm .contactForm .formItem .message");
    let i = 0;



    if (name.value === "") {
        nameError.style.display = "block";
        name.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        i = i + 1;

    } else {
        nameError.style.display = "none";

    }

    if (email.value.match(validRegexEmail)) {

        emailError.style.display = "none";

    } else {


        emailError.style.display = "block";
        email.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        emailError.textContent = "This email is invalid!";
        i = i + 1;

    }

    if (phone.value === "") {
        phoneError.style.display = "block";
        phone.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        i = i + 1;
    } else {
        phoneError.style.display = "none";

    }

    if (subject.value === "") {
        subjectError.style.display = "block";
        subject.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        i = i + 1;
    } else {
        subjectError.style.display = "none";

    }

    let text = message.value;
    console.log(message);

    if (text == "") {

        messageError.style = "display:block;";
        message.parentElement.style = "border: 3px solid rgb(124, 9, 9);";
        i = i + 1;
        console.log(messageError);

    } else {

        messageError.style.display = "none";

    }

    if (i > 0) {

        e.preventDefault();

    } else {

    }


    //.right .contactForm .texterror

});