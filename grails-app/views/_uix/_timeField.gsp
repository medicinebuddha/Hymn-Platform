<%@page defaultCodec="HTML" %>
<div class="form-group">
    <label class="control-label col-md-3" for="${attrs.id}">${attrs.label}</label>
    <div class="col-md-9">
        <div class="input-group bootstrap-timepicker">                                       
            <input type="text" id="${attrs.id}" class="form-control ${attrs.is24hr?"timepicker-24":"timepicker-default"}" value="${attrs.value}"  ${attrs.placeholder?raw("placeholder=\""+attrs.placeholder+"\""):""}>
            <span class="input-group-btn">
                <button class="btn default" type="button"><i class="icon-time"></i></button>
            </span>
        </div>
        <g:if test="${attrs.hint}">
            <span class="help-block">${attrs.hint}</span>                  
        </g:if>
    </div>
</div>
