var acc = document.getElementsByClassName("accordion");
var i;

window.addEventListener('load', ()=>{

    acc[0].classList.toggle("active");
    let firstPanel = acc[0].nextElementSibling;

    if (firstPanel.style.maxHeight) {
        firstPanel.style.maxHeight = null;
      } else {
        firstPanel.style.maxHeight = firstPanel.scrollHeight + "px";
      } 


});


for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}