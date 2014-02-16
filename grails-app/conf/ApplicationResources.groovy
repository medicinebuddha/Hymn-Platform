modules = {
    application {          
        resource url:'js/application.js'          
    }
    
    globalCss {
        resource url:'assets/plugins/font-awesome/css/font-awesome.min.css'
        resource url:'assets/plugins/bootstrap/css/bootstrap.min.css'
        resource url:'assets/plugins/uniform/css/uniform.default.css'
    }
    
    globalJs{       
        resource url:'assets/plugins/jquery-1.10.2.min.js'
        resource url:'assets/plugins/jquery-migrate-1.2.1.min.js'
        resource url:'assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js'
        resource url:'assets/plugins/bootstrap/js/bootstrap.min.js'
        resource url:'assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js'
        resource url:'assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js'
        resource url:'assets/plugins/jquery.blockui.min.js'
        resource url:'assets/plugins/jquery.cookie.min.js'
        resource url:'assets/plugins/uniform/jquery.uniform.min.js'                           
    }
    
    themeCss{
        resource url:'assets/plugins/metronic/css/style-metronic.css'
        resource url:'assets/plugins/metronic/css/style.css'
        resource url:'assets/plugins/metronic/css/style-responsive.css'
        resource url:'assets/plugins/metronic/css/plugins.css'
        resource url:'assets/plugins/metronic/css/pages/tasks.css'
        resource url:'assets/plugins/metronic/css/themes/default.css',attrs:[id:'style_color']
        resource url:'assets/plugins/metronic/css/custom.css'
    }

    themeJs{
        resource url:'assets/plugins/metronic/js/app.js' 
    }
    
    
}