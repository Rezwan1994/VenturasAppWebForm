
var CloseTooltip = function () {
    console.log("sdfds")
    $(".itemtooltip").addClass("notApear");
    $(".itemtooltip").css("opacity", "0");
}
$(document).ready(function () {

    $(".show-tt").click(function () {

        if ($(".itemtooltip").hasClass("notApear")) {
            $(".itemtooltip").removeClass("notApear");
            $(".itemtooltip").css("opacity", "100");
            setTimeout(function () {
                $(".itemtooltip").addClass("notApear");
                $(".itemtooltip").css("opacity", "0");
            }, 30000);
        }
        else {

            $(".itemtooltip").addClass("isApear");
            $(".itemtooltip").css("opacity", "0");
        }

    })
    var Time = '00:00:01';

    $(".date").datepicker({
        format: "dd-mm-yyyy",
        autoclose: true

    });
    var timepicker = {
        now: Time,
        title: 'Time'
    };
    $('.time').wickedpicker(timepicker);

})