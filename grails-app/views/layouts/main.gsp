<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>
<!--> <html lang="en" class="no-js"> 
<!--<![endif]-->
<!-- BEGIN HEAD -->
    <head>
        <base href="${request.contextPath}/"/>
        <title><g:layoutTitle default="Admin Dashboard | HYMN Platform "/></title>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="HYMN Platform" name="description" />
        <meta content="loonghymn" name="author" />
        <meta name="MobileOptimized" content="320">
        <!-- BEGIN GLOBAL MANDATORY STYLES -->   
    <asset:stylesheet src="main.css"/>
    <asset:stylesheet src="hymn.ui.css"/>

    <link  href="assets/hymn.theme/css/themes/default.css" rel="stylesheet" id="style_color"/>
<!-- END GLOBAL MANDATORY STYLES -->    
    <g:layoutHead/>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
     <!-- BEGIN HEADER--> 
    <g:render template="/shared/hymn.theme/headerTemplate"/>
    <!-- END HEADER -->
    <div class="clearfix"></div>
   <!-- BEGIN CONTAINER -->
    <div class="page-container">
         <!-- BEGIN SIDEBAR -->
        <g:render template="/shared/hymn.theme/sidebarTemplate"/>
        <!-- END SIDEBAR -->
       <!-- BEGIN PAGE -->
        <div class="page-content">
            <!-- BEGIN APP MODAL FORM-->           
            <!-- END APP MODAL FORM-->
             <!-- BEGIN STYLE CUSTOMIZER -->
            <g:render template="/shared/hymn.theme/styleCustomizerTemplate"/>
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
        <g:render template="/shared/hymn.theme/footerTemplate"/>
        <!-- END FOOTER -->
 <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
 <!-- BEGIN CORE PLUGINS -->   
 <!--[if lt IE 9]>
 <asset:javascript src="respond.min.js"/>
  <asset:javascript src="excanvas.min.js"/>
 <![endif]-->   
        <asset:javascript src="main.js"/>
        <asset:javascript src="hymn.ui.js"/>
      <!-- END CORE PLUGINS -->
       <!-- END JAVASCRIPTS -->       
</body>
<!-- END BODY -->
</html>