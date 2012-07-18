/// <reference path="jquery-1.6.1.min.js" />
/// <reference path="jquery.timers-1.2.js" />

// Update 21.01. Remove bud with fadeIn in IE
// Pack for cice 30.05
var links;
var panels;
var currentSlide;
var slideCount;

$(document).ready(function () {

    $("#slidesContentHolder").mouseenter(function () {
        stopSlider();
    }).mouseleave(function () {
        startSlider();
    })

    panels = $("#slidesContentHolder .slidePanel");
    links = $("#sliderPoints span");
    $(links).each(function (num) {
        $(this).mouseenter(function () { selectSlide(num) });
    });
    slideCount = links.length;

    selectSlide(0);
    startSlider();

});


function startSlider() {
    $(document).everyTime(3000, "sliderTimer", function () { nextSlide() });
}

function stopSlider() {
    $(document).stopTime("sliderTimer");
}


function selectSlide(i) {

    currentSlide = i;

    lockedSlide = true;

    $(links).each(function () {
        $(this).removeClass("hover");
    });

    links.eq(i).attr("class", "hover");

    panels.each(function (num) {
        if (num != currentSlide)
            $(this).hide();
    });

    if ($.browser.msie) {
        panels.eq(i).show();
    }
    else {

        panels.eq(i).fadeIn(600, function () {

            if (i != currentSlide) {
                panels.each(function (num) {
                    if (num != currentSlide)
                        $(this).hide();
                });
            }

        });

    }

}

function nextSlide() {
    if (currentSlide < slideCount - 1) {
        selectSlide(currentSlide + 1);
    } else {
        selectSlide(0);
    }
}


