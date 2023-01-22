const floatField = document.querySelectorAll('#floatField');

const floatContainer = document.querySelectorAll('#floatContainer');
var i = 0;


var close = document.getElementsByClassName("closebtn");
var j;

for (j = 0; j < close.length; j++) {
    close[j].onclick = function() {
        var div = this.parentElement;
        div.style.opacity = "0";
        setTimeout(function() { div.style.display = "none"; }, 600);
    }
}

window.addEventListener("load", () => {


    for (const field of floatField) {

        let float = floatContainer[i];

        field.addEventListener('focus', () => {

            float.classList.add('active');
            float.style = "border:3px solid hsl(38deg 22% 45%);";

        });

        field.addEventListener('blur', () => {

            float.style = "border:3px solid #ccc";

            if (field.value == "") {
                float.classList.remove('active');
            }
        });

        i = i + 1;

    }

})