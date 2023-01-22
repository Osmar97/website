let cookieModal = document.querySelector(".cookie-consent-banner")

let cancelCookieBtn = document.querySelector("#btnDecline")
let acceptCookieBtn = document.querySelector("#btnOk")

cancelCookieBtn.addEventListener("click", function() {
    cookieModal.setAttribute("style", "display:none;")
})
acceptCookieBtn.addEventListener("click", function() {
    cookieModal.setAttribute("style", "display:none;")
    localStorage.setItem("cookieAccepted", "yes")
})

setTimeout(function() {
    let cookieAccepted = localStorage.getItem("cookieAccepted")
    if (cookieAccepted != "yes") {
        cookieModal.setAttribute("style", "display:block;")
    }
}, 3000)