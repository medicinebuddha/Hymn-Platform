<%@page defaultCodec="HTML" %>
<div class="form-group">
    <label class="control-label col-md-3" for="${attrs.id}">${attrs.label}</label>
    <div class="col-md-9" >
        <div class="input-group date" data-hymn-ui="datepicker">
            <input  type="text" class="form-control" id="${attrs.id}"   value="${attrs.value}" ${attrs.placeholder?raw("placeholder=\""+attrs.placeholder+"\""):""}>
            <span class="input-group-addon">
                <i class="glyphicon glyphicon-th"></i>
            </span>
        </div>
        <g:if test="${attrs.hint}">
            <span class="help-block">${attrs.hint}</span>                  
        </g:if>
    </div>
</div>

