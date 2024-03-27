$(document).ready(function() {
    window.addEventListener("message", function(event) {
        if (event.data.anprShow) {
            $(".anpr-root").fadeIn()
        } else if (event.data.anprHide) {
            $(".anpr-root").fadeOut()
        } else if (event.data.anprSetFront) {
            $("#anpr-front-plate").text(event.data.plate)
            $("#anpr-front-speed").text(event.data.speed + " MPH")
            $("#anpr-front-model").text(event.data.model)
        } else if (event.data.anprSetRear) {
            $("#anpr-rear-plate").text(event.data.plate)
            $("#anpr-rear-speed").text(event.data.speed + " MPH")
            $("#anpr-rear-model").text(event.data.model)
        }
    })
})