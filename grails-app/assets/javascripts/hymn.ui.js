
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

var handleDatePicker = function() {
    $('div[data-hymn-ui="datepicker"]').datepicker({
    });
}

jQuery(document).ready(function() {
    handleDatePicker();
});
