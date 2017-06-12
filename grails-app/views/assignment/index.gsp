<%@ page import="assignmentrecorder.Assignment" contentType="text/html;charset=UTF-8" %>
%{--<%@ page import="assignmentrecorder.AssignmentController" contentType="text/html;charset=UTF-8" %>--}%
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Assignment Recorder</title>

</head>
<body>

<div><H2 id="topic" class="dk">Assignment List</H2></div>

<div  id="table" class="table-responsive">
	<table class="table table-hover table-bordered">

		<tr>
			<g:sortableColumn id="" property="id" title="id" />
			<g:sortableColumn id="" property="subject" title="subject" />
			<g:sortableColumn id="" property="type" title="type" />
			<g:sortableColumn id="" property="question" title="question" />
			<g:sortableColumn id="" property="description" title="description" />
			<g:sortableColumn id="" property="assignDate" title="assignDate" />
			<g:sortableColumn id="" property="dueDate" title="dueDate" />

			<th>Edit</th>

			<th>Delete</th>
		</tr>

		<g:if test="${assignmentInstanceList}">
			<tbody>
			<g:each in="${assignmentInstanceList}" status="i" var="assignmentInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" style="text-align: center">
				<td id="">${i+1}</td>
				<td id="">${fieldValue(bean: assignmentInstance, field: "subject")} </td>
				<td id="">${fieldValue(bean: assignmentInstance, field: "type")} </td>
				<td id="">${fieldValue(bean: assignmentInstance, field: "question")} </td>
				<td id="">${fieldValue(bean: assignmentInstance, field: "description")} </td>
				<td id="">${fieldValue(bean: assignmentInstance, field: "assignDate")} </td>
				<td id="">${fieldValue(bean: assignmentInstance, field: "dueDate")} </td>
				<g:form controller="assignment" action="edit">
					<g:hiddenField type="number" name="id" value="${assignmentInstance.id}"/>
					<td><g:actionSubmit value="Edit" class="btn btn-primary" >Edit</g:actionSubmit></td>
				</g:form>
				<g:form controller="assignment" action="delete" method="DELETE">
					<g:hiddenField type="number" name="id" value="${assignmentInstance.id}"/>
					<td><g:actionSubmit value="delete" class="btn btn-danger"   >Delete</g:actionSubmit></td>

				</g:form>
			</g:each>
			</tbody>
		</g:if>
	</table>
</div>

</div>


</body>
</html>
