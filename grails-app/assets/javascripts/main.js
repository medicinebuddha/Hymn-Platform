
//=require jquery-1.10.2.min
//=require jquery-migrate-1.2.1.min
//=require jquery-ui/jquery-ui-1.10.3.custom.min
//=require bootstrap/js/bootstrap.min
//=require bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min
//=require jquery-slimscroll/jquery.slimscroll.min
//=require jquery.blockui.min
//=require jquery.cookie.min
//=require uniform/jquery.uniform.min
//=require metronic/js/app
//=require bootstrap-datepicker/js/bootstrap-datepicker
//=require bootstrap-datetimepicker/js/bootstrap-datetimepicker
//=require bootstrap-timepicker/js/bootstrap-timepicker



//handle theme colors
var setColor = function(color) {
    $('#style_color').attr("href", "assets/metronic/css/themes/" + color + ".css");
    $.cookie('style_color', color);
}

var handleDatePicker = function() {

    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            autoclose: true
        });
        $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
    }
}

var handleDatetimePicker = function() {

    $(".form_datetime").datetimepicker({
        autoclose: true,
        format: "dd MM yyyy - hh:ii",
        pickerPosition: "bottom-left"
    });

    $(".form_advance_datetime").datetimepicker({
        format: "dd MM yyyy - hh:ii",
        autoclose: true,
        todayBtn: true,
        startDate: "2013-02-14 10:00",
        pickerPosition: (App.isRTL() ? "bottom-right" : "bottom-left"),
        minuteStep: 10
    });

    $(".form_meridian_datetime").datetimepicker({
        format: "dd MM yyyy - HH:ii P",
        showMeridian: true,
        autoclose: true,
        pickerPosition: (App.isRTL() ? "bottom-right" : "bottom-left"),
        todayBtn: true
    });

    $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
}

var handleTimePicker = function() {

    if (jQuery().timepicker) {
        $('.timepicker-default').timepicker({
            autoclose: true
        });
        $('.timepicker-24').timepicker({
            autoclose: true,
            minuteStep: 1,
            showSeconds: true,
            showMeridian: false
        });
    }
}

jQuery(document).ready(function() {
    App.init(); // initlayout and core plugins     

    handleDatePicker();
    handleDatetimePicker();
    handleTimePicker();
});


