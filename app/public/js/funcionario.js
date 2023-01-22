let sideLeft = document.querySelector("#details");
let sideRight = document.querySelector("#img");
var resizeMobile = false;
var resizeComputer = false;


window.addEventListener('resize', () => {

    if (window.screen.width < 941) {

        if (resizeMobile == false) {

            let tempLeft = sideLeft.innerHTML;
            let tempRight = sideRight.innerHTML;

            sideLeft.classList.remove("left");
            sideRight.classList.remove("right");

            sideLeft.classList.add("right");
            sideRight.classList.add("left");

            sideLeft.innerHTML = "";
            sideRight.innerHTML = "";

            sideLeft.innerHTML = tempRight;
            sideRight.innerHTML = tempLeft;

            resizeMobile = true;
            resizeComputer = false;
        }

    } else {

        if (resizeComputer == false) {

            let tempLeft = sideLeft.innerHTML;
            let tempRight = sideRight.innerHTML;

            sideLeft.classList.remove("right");
            sideRight.classList.remove("left");

            sideLeft.classList.add("left");
            sideRight.classList.add("right");

            sideLeft.innerHTML = "";
            sideRight.innerHTML = "";

            sideLeft.innerHTML = tempRight;
            sideRight.innerHTML = tempLeft;

            resizeMobile = false;
            resizeComputer = true;
        }
    }

});



window.addEventListener('load', () => {

    if (window.screen.width < 941) {

        if (resizeMobile == false) {

            let tempLeft = sideLeft.innerHTML;
            let tempRight = sideRight.innerHTML;

            sideLeft.classList.remove("left");
            sideRight.classList.remove("right");

            sideLeft.classList.add("right");
            sideRight.classList.add("left");

            sideLeft.innerHTML = "";
            sideRight.innerHTML = "";

            sideLeft.innerHTML = tempRight;
            sideRight.innerHTML = tempLeft;

            resizeMobile = true;
            resizeComputer = false;
        }

    } else {

        if (resizeComputer == false) {
            resizeComputer = true;
        }
    }

});