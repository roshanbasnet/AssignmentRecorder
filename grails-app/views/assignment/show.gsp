<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 6/6/16
  Time: 9:00 AM
--%>
<%@ page import="assignmentrecorder.Assignment" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'assignment.label', default: 'Assignment')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>

<div id="show-assignment" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="table-responsive">
        <table class="table .table-hover table-bordered">

            <tr>
                <g:sortableColumn id="" property="id" title="${message(code: 'assignment.id.label', default: 'id')}" />
                <g:sortableColumn id="userListHeader" property="subject" title="${message(code: 'message.rollno.label', default: 'subject')}" />
                <g:sortableColumn id="userListHeader" property="type" title="${message(code: 'message.rollno.label', default: 'type')}" />
                <g:sortableColumn id="userListHeader" property="question" title="${message(code: 'message.rollno.label', default: 'question')}" />
                <g:sortableColumn id="userListHeader" property="description" title="${message(code: 'message.rollno.label', default: 'description')}" />
                <g:sortableColumn id="userListHeader" property="assignDate" title="${message(code: 'message.rollno.label', default: 'assignDate')}" />
                <g:sortableColumn id="userListHeader" property="dueDate" title="${message(code: 'message.rollno.label', default: 'dueDate')}" />
                %{--<g:sortableColumn id="userListHeader" property="timeRemaining" title="${message(code: 'message.rollno.label', default: 'timeRemaining')}" />--}%

                <th>Edit</th>

                <th>Delete</th>
            </tr>

            <g:if test="${assignmentInstanceList}">
                <tbody>
                <g:each in="${assignmentInstanceList}" status="i" var="assignmentInstance">
                %{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" style="text-align: center">--}%
                    <td id="userData">${assignmentInstance.id}</td>
                    <td id="userData">${fieldValue(bean: assignmentInstance, field: "subject")} </td>
                    <td id="userData">${fieldValue(bean: assignmentInstance, field: "type")} </td>
                    <td id="userData">${fieldValue(bean: assignmentInstance, field: "question")} </td>
                    <td id="userData">${fieldValue(bean: assignmentInstance, field: "description")} </td>
                    <td id="userData">${fieldValue(bean: assignmentInstance, field: "assignDate")} </td>
                    <td id="userData">${fieldValue(bean: assignmentInstance, field: "dueDate")} </td>
                </g:each>
                </tbody>
            </g:if>
        </table>
    </div>
    <g:form controller="assignment" action="edit">
        <g:hiddenField type="number" name="id" value="${assignmentInstanceList.id}"/>
        <td><button>Edit</button></td>
    </g:form>
    <g:form controller="assignment" action="delete">
        <g:hiddenField type="number" name="id" value="${assignmentInstanceList.id}"/>
        <td><button onclick="alert('Deleting the Assignment')">Delete</button></td>
    </g:form>
</div>
</body>
</html>
