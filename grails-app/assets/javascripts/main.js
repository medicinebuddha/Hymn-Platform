
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


//handle theme colors
var setColor = function(color) {
    $('#style_color').attr("href", "assets/metronic/css/themes/" + color + ".css");
    $.cookie('style_color', color);
}

jQuery(document).ready(function() {
    App.init(); // initlayout and core plugins        
});


