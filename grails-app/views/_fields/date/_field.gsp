<%@ page defaultCodec="html" %>
<div class="form-group">
    <label class="control-label col-md-3" for="${property}">${label}</label>
    <div class="col-md-9">
        <input type="text" name="${property}" id="${property}" <g:if test="${placeholder}">placeholder="${placeholder}" </g:if> class="form-control date-picker" value="${value}" />
         <g:if test="${hint}">
            <span class="help-block">${hint}</div>
        </g:if>        
    </div>
</div>
