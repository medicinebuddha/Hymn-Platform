<div class="page-sidebar navbar-collapse collapse">

    <li>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="sidebar-toggler hidden-phone"></div>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    </li>
     <!-- BEGIN MAIN MENU --> 
    <nav:menu id="nav" custom="true" class="page-sidebar-menu"  forceChildren="true">

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
 <!-- END MAIN MENU -->
</div>

