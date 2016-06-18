<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 6/7/16
  Time: 10:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Assignment</title>
    <meta name="layout" content="main">
    %{--<g:set var="entityName" value="${message(code: 'assignment.label', default: 'Assignment')}" />--}%
    %{--<title><g:message code="default.edit.label" args="[entityName]" /></title>--}%
</head>

<body>
<div class="form-horizontal">
<div id="edit-assignment" class="content scaffold-edit" role="main">
    %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${assignmentInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${assignmentInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>

    <g:form class="form-horizontal" url="[resource:assignmentInstance, action:'update']" method="PUT" >
        <g:hiddenField name="id" value="${assignmentInstance.id}" />
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <div class="col-sm-offset-2 col-sm-10">
                %{--<button type="submit" name="update" class="btn btn-primary">Update</button>--}%
                %{--<g:actionSubmit class="bottom btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
                <button type="submit" name="create" class="btn btn-primary">Update</button>



            </div>
        </fieldset>
    </g:form>
    </div>
</div>
</body>
</html>