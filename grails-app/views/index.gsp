<%@ page import="assignmentrecorder.Assignment" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Assignment Recorder</title>

</head>
<body>

%{--<div><H2 id="topic" class="dk">Assignment List</H2></div>--}%

%{--<div id="show-assignment" class="content scaffold-show" role="main">--}%
	%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
	%{--<g:if test="${flash.message}">--}%
		%{--<div class="message" role="status">${flash.message}</div>--}%
	%{--</g:if>--}%
	%{--<div class="table-responsive">--}%
		%{--<table class="table .table-hover table-bordered">--}%

			%{--<tr>--}%
				%{--<g:sortableColumn id="" property="id" title="${message(code: 'assignment.id.l', default: 'id')}" />--}%
				%{--<g:sortableColumn id="" property="subject" title="${message(code: 'message.subject.label', default: 'subject')}" />--}%
				%{--<g:sortableColumn id="" property="type" title="${message(code: 'message.type.label', default: 'type')}" />--}%
				%{--<g:sortableColumn id="" property="question" title="${message(code: 'message.question.label', default: 'question')}" />--}%
				%{--<g:sortableColumn id="" property="description" title="${message(code: 'message.description.label', default: 'description')}" />--}%
				%{--<g:sortableColumn id="" property="assignDate" title="${message(code: 'message.assignDate.label', default: 'assignDate')}" />--}%
				%{--<g:sortableColumn id="" property="dueDate" title="${message(code: 'message.dueDate.label', default: 'dueDate')}" />--}%
				%{--<g:sortableColumn id="" property="timeRemaining" title="${message(code: 'message.rollno.label', default: 'timeRemaining')}" />--}%
				%{--<g:sortableColumn id="" property="id" title="${message('id')}" />--}%
				%{--<g:sortableColumn id="" property="subject" title="${message('subject')}" />--}%
				%{--<g:sortableColumn id="" property="type" title="${message('type')}" />--}%
				%{--<g:sortableColumn id="" property="question" title="${message('question')}" />--}%
				%{--<g:sortableColumn id="" property="description" title="${message('description')}" />--}%
				%{--<g:sortableColumn id="" property="assignDate" title="${message('assignDate')}" />--}%
				%{--<g:sortableColumn id="" property="dueDate" title="${message('dueDate')}" />--}%

				%{--<th>Edit</th>--}%

				%{--<th>Delete</th>--}%
			%{--</tr>--}%

			%{--<g:if test="${assignmentInstanceList}">--}%
				%{--<tbody>--}%
				%{--<g:each in="${assignmentInstanceList}" status="i" var="assignmentInstance">--}%
					%{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" style="text-align: center">--}%
					%{--<td id="">${assignmentInstance.id}</td>--}%
					%{--<td id="">${fieldValue(bean: assignmentInstance, field: "subject")} </td>--}%
					%{--<td id="">${fieldValue(bean: assignmentInstance, field: "type")} </td>--}%
					%{--<td id="">${fieldValue(bean: assignmentInstance, field: "question")} </td>--}%
					%{--<td id="">${fieldValue(bean: assignmentInstance, field: "description")} </td>--}%
					%{--<td id="">${fieldValue(bean: assignmentInstance, field: "assignDate")} </td>--}%
					%{--<td id="">${fieldValue(bean: assignmentInstance, field: "dueDate")} </td>--}%
					%{--<g:form controller="assignment" >--}%
						%{--<g:hiddenField type="number" name="id" value="${assignmentInstance.id}"/>--}%
						%{--<td><g:actionSubmit value="Edit" action="edit">Edit</g:actionSubmit></td>--}%
					%{--</g:form>--}%
					%{--<g:form controller="assignment" action="delete">--}%
						%{--<g:hiddenField type="number" name="id" value="${assignmentInstance.id}"/>--}%
						%{--<td><button onclick="alert('Deleting the Assignment')">Delete</button></td>--}%
					%{--</g:form>--}%
				%{--</g:each>--}%
				%{--</tbody>--}%
			%{--</g:if>--}%
		%{--</table>--}%
	%{--</div>--}%

%{--</div>--}%
<h2>test</h2>

</body>
</html>
