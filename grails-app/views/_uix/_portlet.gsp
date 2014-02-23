<%@page defaultCodec="HTML" %>
 <!-- BEGIN PORTLET-->   
<div class="portlet box ${attrs.color?attrs.color:'blue'}">
    <div class="portlet-title">
        <div class="caption"><i class="icon-reorder"></i>${attrs.caption}</div>
        <div class="tools">
            <g:if test="${attrs.enableCollapse}">
                <a href="javascript:void(0);" class="collapse"></a>
            </g:if>
            <g:if test="${attrs.enableConfig}">
                <a href="#portlet-config" data-toggle="modal" class="config"></a>
            </g:if>
            <g:if test="${attrs.enableReload}">
                <a href="javascript:void(0);" class="reload"></a>
            </g:if>
            <g:if test="${attrs.enableRemove}">
                <a href="javascript:void(0);" class="remove"></a>
            </g:if>
        </div>
    </div>
    <div class="portlet-body form">       
        ${raw(body())}     
    </div>
</div>
<!-- END PORTLET-->