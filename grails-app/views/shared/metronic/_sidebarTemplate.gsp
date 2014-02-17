<nav:set path="/content/about"/>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar navbar-collapse collapse">
    
    <ul class="page-sidebar-menu">
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <li>
            <div class="sidebar-toggler hidden-phone"></div>
        </li>
         <!-- END SIDEBAR TOGGLER BUTTON -->
         <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
        <li>
            <form class="sidebar-search" action="extra_search.html" method="POST">
                <div class="form-container">
                    <div class="input-box">
                        <a href="javascript:;" class="remove"></a>
                        <input type="text" placeholder="Search..."/>
                        <input type="button" class="submit" value=" "/>
                    </div>
                </div>
            </form>
        </li>
        <!-- END RESPONSIVE QUICK SEARCH FORM -->
        </ul>
        
   <!-- BEGIN MAIN MENU -->         
    <nav:menu id="mainmenu" custom="true" class="page-sidebar-menu"  forceChildren="true">             
        <li class="${active?'active':''}">
        <p:callTag tag="g:link" attrs="${linkArgs + [class:active ? 'active' : '']}">     
            <i class="${item.data.icon ? item.data.icon : 'icon-home'}"></i>
            <span class="title"><nav:title item="${item}"/></span>
            <g:if test="${active}">
                <span class="selected"></span>
            </g:if>
            <g:if test="${item.children}">
                <span class="arrow"></span>
            </g:if>
        </p:callTag>

        <g:if test="${item.children}">
            <nav:menu scope="${item.id}" custom="true" class="sub-menu">
                <li>
                <p:callTag tag="g:link" attrs="${linkArgs + [class:active ? 'active' : '']}">                       
                    <nav:title item="${item}"/>                     
                </p:callTag>
                </li>
            </nav:menu>
        </g:if>
        </li>
    </nav:menu>      
 <!-- END SIDEBAR MENU -->
</div>
<!-- END SIDEBAR -->
