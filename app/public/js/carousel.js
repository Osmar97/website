$(document).ready(function() {

    $(".carousel").carousel({
        indicators: true,
        noWrap: false,
        padding: 0,
        enableTouch: false,
        onCycleTo: null,
        shift: 0,
    });

    $(".loader").fadeOut("slow");


});

$("#prev").click(function(e) {

    $("#carousel").carousel('prev');

});

$("#next").click(function() {

    $("#carousel").carousel('next');

});