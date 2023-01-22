var verifyGif = false;
var verifyVideo = false;

var gif = document.createElement("img");
var video = document.createElement("video");

window.addEventListener("resize", () => {
    mainBox.style.display = "block";
    videoBack();
});

gif.classList.add("backGif");

gif.src = "../img/home/casteloMontehna.jpg";

function videoBack() {

    let main = document.querySelector("main");

    main.insertBefore(gif, main.firstElementChild);

}