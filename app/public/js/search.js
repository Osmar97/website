const floatField = document.querySelectorAll('#floatField');

const floatContainer = document.querySelectorAll('#floatContainer');
var i = 0;

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