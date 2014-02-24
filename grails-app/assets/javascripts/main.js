
//=require jquery/jquery.min
//=require jquery-migrate/jquery-migrate.min
//=require jquery.ui/ui/minified/jquery-ui.min
//=require bootstrap/js/bootstrap.min
//=require bootstrap-hover-dropdown/bootstrap-hover-dropdown.min
//=require jquery.slimscroll/jquery.slimscroll.min
//=require jquery.blockUI/jquery.blockUI
//=require jquery.cookie/jquery.cookie
//=require jquery.uniform/jquery.uniform.min
//=require hymn.theme/js/app
//=require bootstrap-datepicker/js/bootstrap-datepicker
//=require bootstrap-datetimepicker/js/bootstrap-datetimepicker
//=require bootstrap-timepicker/js/bootstrap-timepicker



//handle theme colors
var setColor = function(color) {
    $('#style_color').attr("href", "assets/hymn.theme/css/themes/" + color + ".css");
    $.cookie('style_color', color);
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


