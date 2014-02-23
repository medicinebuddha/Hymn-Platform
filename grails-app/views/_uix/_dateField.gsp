<%@page defaultCodec="HTML" %>
<div class="form-group">
    <label class="control-label col-md-3" for="${attrs.id}">${attrs.label}</label>
    <div class="col-md-9">
        <input class="form-control date-picker"  type="text" id="${attrs.id}"   value="${attrs.value}" ${attrs.placeholder?raw("placeholder=\""+attrs.placeholder+"\""):""}>
        <g:if test="${attrs.hint}">
            <span class="help-block">${attrs.hint}</span>                  
        </g:if>
    </div>
</div>