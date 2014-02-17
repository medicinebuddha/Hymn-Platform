<!-- BEGIN SIDEBAR -->
<div class="page-sidebar navbar-collapse collapse">
   <!-- BEGIN MAIN MENU -->   
	<g:set var="onlyOnce" value="${true}"/>      
    <nav:menu id="mainmenu" scope="System.Mainmenu" custom="true" class="page-sidebar-menu"  forceChildren="true">             
  <g:if test="${onlyOnce}">
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
<g:set var="onlyOnce" value="${false}"/>      
</g:if>
        <li class="${active?'active':''}">
<g:if test="${item.children}">
       		<a href="javascript:void(0);" class="${active ? 'active' : ''}"> 
            <i class="${item.data.icon ? item.data.icon : 'icon-home'}"></i>
            <span class="title"><nav:title item="${item}"/></span>
            <g:if test="${active}">
                <span class="selected"></span>
            </g:if>
                <span class="arrow"></span>
         </a>
            <nav:menu scope="${item.id}" custom="true" class="sub-menu">
                <li>
                <p:callTag tag="g:link" attrs="${linkArgs + [class:active ? 'active' : '']}">                       
                    <nav:title item="${item}"/>                     
                </p:callTag>
                </li>
            </nav:menu>
            	</g:if>
	<g:else>
		<p:callTag tag="g:link" attrs="${linkArgs + [class:active ? 'active' : '']}">
            <i class="${item.data.icon ? item.data.icon : 'icon-home'}"></i>
            <span class="title"><nav:title item="${item}"/></span>
            <g:if test="${active}">
                <span class="selected"></span>
            </g:if>
	         </p:callTag>
        </li>
        	</g:else>
    </nav:menu>      
 <!-- END SIDEBAR MENU -->
</div>
<!-- END SIDEBAR -->