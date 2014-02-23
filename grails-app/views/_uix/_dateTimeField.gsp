<%@page defaultCodec="HTML" %>
<div class="form-group">
    <label class="control-label col-md-3"  for="${attrs.id}">${attrs.label}</label>
    <div class="col-md-9">
        <div class="input-group date form_datetime">                                       
            <input type="text" readonly class="form-control"  value="${attrs.value}" ${attrs.placeholder?raw("placeholder=\""+attrs.placeholder+"\""):""}>
            <span class="input-group-btn">
                <button class="btn default date-set" type="button"><i class="icon-calendar"></i></button>
            </span>
        </div>  
        <g:if test="${attrs.hint}">
            <span class="help-block">${attrs.hint}</span>                  
        </g:if>
    </div>
</div>
