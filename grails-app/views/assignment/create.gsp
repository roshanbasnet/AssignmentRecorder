<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 6/6/16
  Time: 9:00 AM
--%>

<%@ page import="assignmentrecorder.Assignment" contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
    <title>assignmentRecorder</title>
    <g:set var="entityName" value="${message(code: 'assignment.label', default: 'Assignment')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>
<div><H2 class="" id="create" >Create</H2></div>

    <div class="form-horizontal">
    <div id="create-assignment" class="content scaffold-create" role="main">
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
        <g:form url="[resource:assignmentInstance, action:'save']" >
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" name="create" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>