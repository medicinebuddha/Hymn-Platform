
<%@ page import="com.loonghymn.samples.DemoEntity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="master">
		<g:set var="entityName" value="${message(code: 'demoEntity.label', default: 'DemoEntity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
<nav:set path="'System.MainMenu'/content/help"/>
		<a href="#list-demoEntity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-demoEntity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'demoEntity.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'demoEntity.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="publishDate" title="${message(code: 'demoEntity.publishDate.label', default: 'Publish Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${demoEntityInstanceList}" status="i" var="demoEntityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${demoEntityInstance.id}">${fieldValue(bean: demoEntityInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: demoEntityInstance, field: "name")}</td>
					
						<td><g:formatDate date="${demoEntityInstance.publishDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${demoEntityInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
