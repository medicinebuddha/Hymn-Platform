<%@ page defaultCodec="html" %>
<div class="display-group">
    <div class="display-label">${label.encodeAsHTML()}</div>

    <div class="display-values">
        ${value}

        <g:if test="${hint}">
            <div class="display-help-block">${hint.encodeAsHTML()}</div>
        </g:if>
    </div>
</div>