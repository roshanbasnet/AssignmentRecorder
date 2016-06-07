
<%@ page import="assignmentrec.Assignment" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'assignment.label', default: 'Assignment')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-assignment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="show-assignment" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list assignment">

        <g:if test="${assignmentInstance?.subject}">
            <li class="fieldcontain">
                <span id="subject-label" class="property-label"><g:message code="assignment.subject.label" default="Subject" /></span>

                <span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${assignmentInstance}" field="subject"/></span>

            </li>
        </g:if>

        <g:if test="${assignmentInstance?.type}">
            <li class="fieldcontain">
                <span id="type-label" class="property-label"><g:message code="assignment.type.label" default="Type" /></span>

                <span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${assignmentInstance}" field="type"/></span>

            </li>
        </g:if>

        <g:if test="${assignmentInstance?.assignDate}">
            <li class="fieldcontain">
                <span id="assignDate-label" class="property-label"><g:message code="assignment.assignDate.label" default="Assign Date" /></span>

                <span class="property-value" aria-labelledby="assignDate-label"><g:formatDate date="${assignmentInstance?.assignDate}" /></span>

            </li>
        </g:if>

        <g:if test="${assignmentInstance?.assignment}">
            <li class="fieldcontain">
                <span id="assignment-label" class="property-label"><g:message code="assignment.assignment.label" default="Assignment" /></span>

                <span class="property-value" aria-labelledby="assignment-label"><g:fieldValue bean="${assignmentInstance}" field="assignment"/></span>

            </li>
        </g:if>

        <g:if test="${assignmentInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="assignment.description.label" default="Description" /></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${assignmentInstance}" field="description"/></span>

            </li>
        </g:if>

        <g:if test="${assignmentInstance?.timeRemaining}">
            <li class="fieldcontain">
                <span id="timeRemaining-label" class="property-label"><g:message code="assignment.timeRemaining.label" default="Time Remaining" /></span>

                <span class="property-value" aria-labelledby="timeRemaining-label"><g:fieldValue bean="${assignmentInstance}" field="timeRemaining"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource:assignmentInstance, action:'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${assignmentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
