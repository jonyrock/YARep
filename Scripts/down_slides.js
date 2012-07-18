
var slidesStares = new Object();
var slidesLinks = new Object();

var closedText = "▼ Открыть";
var openedText = "▲ Скрыть";

function toggleSlide(slideName) {

    if (!getSlideState(slideName))
        $(slidesLinks[slideName]).find("span").text(openedText);
    else
        $(slidesLinks[slideName]).find("span").text(closedText);

    $(slideName).slideToggle();
    slidesStares[slideName] = !slidesStares[slideName];



}

function getButtonClick(button, slideName) {
    linkButtonAndSlide(button, slideName);
    toggleSlide(slideName);
}

function linkButtonAndSlide(button, slideName) {
    slidesLinks[slideName] = button;
}

function getSlideState(slideName) {

    if (slidesStares[slideName] == null) {
        slidesStares[slideName] = false;
    }
    return slidesStares[slideName];

}

