<%@ page defaultCodec="html" %>
<div class="form-group">
    <label class="control-label col-md-3" for="${property}">${label}</label>
    <div class="col-md-9">
        <input type="text" name="${property}" id="${property}" placeholder="small" class="form-control" value="${value}" />
         <g:if test="${hint}">
            <span class="help-block">${hint.encodeAsHTML()}</div>
        </g:if>        
    </div>
</div>