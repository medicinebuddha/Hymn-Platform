<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>
<!--> <html lang="en" class="no-js"> 
<!--<![endif]-->
<!-- BEGIN HEAD -->
    <head>
        <title><g:layoutTitle default="Admin Dashboard | HYMN Platform "/></title>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="HYMN Platform" name="description" />
        <meta content="loonghymn" name="author" />
        <meta name="MobileOptimized" content="320">
        <!-- BEGIN GLOBAL MANDATORY STYLES -->          
    <r:require modules="globalCss,themeCss"/>
    <r:layoutResources/>
    <!-- END GLOBAL MANDATORY STYLES -->    
    <g:layoutHead/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
     <!-- BEGIN HEADER --> 
    <g:render template="/shared/metronic/headerTemplate"/>
    <!-- END HEADER -->
    <div class="clearfix"></div>
   <!-- BEGIN CONTAINER -->
    <div class="page-container">
         <!-- BEGIN SIDEBAR -->
        <g:render template="/shared/metronic/sidebarTemplate"/>
        <!-- END SIDEBAR -->
       <!-- BEGIN PAGE -->
        <div class="page-content">
            <!-- BEGIN APP MODAL FORM-->           
            <!-- END APP MODAL FORM-->
             <!-- BEGIN STYLE CUSTOMIZER -->
            <g:render template="/shared/metronic/styleCustomizerTemplate"/>
             <!-- END BEGIN STYLE CUSTOMIZER -->  
             <!-- BEGIN PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN PAGE TITLE-->                   
                    <!-- END PAGE TITLE -->
                    <!-- BEGIN PAGE  BREADCRUMB-->              
                    <!-- END PAGE  BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
             <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                    <g:layoutBody/>
                </div>
                 <!-- END PAGE CONTENT-->   
            </div>
               <!-- END PAGE -->
        </div>
     <!-- END CONTAINER -->
     <!-- BEGIN FOOTER -->
        <g:render template="/shared/metronic/footerTemplate"/>
        <!-- END FOOTER -->
 <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
 <!-- BEGIN CORE PLUGINS -->   
 <!--[if lt IE 9]>
 <script src="assets/plugins/respond.min.js"></script>
 <script src="assets/plugins/excanvas.min.js"></script> 
 <![endif]-->   
        <r:require modules="globalJs,themeJs,application"/>
        <r:layoutResources/>
        <!-- END CORE PLUGINS -->
        <script>
            jQuery(document).ready(function() {    
            App.init(); // initlayout and core plugins        
            });
        </script>
             <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>