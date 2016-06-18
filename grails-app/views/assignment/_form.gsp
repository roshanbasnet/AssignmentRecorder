<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 6/6/16
  Time: 9:00 AM
--%>

<%@ page import="assignmentrecorder.Assignment" contentType="text/html;charset=UTF-8" %>

	<div class="form-group">
		<label  class="col-sm-2 control-label">Subject</label>
		<div class="col-sm-10 col-xs-2">
			<g:textField name="subject" class="form-control form-size" maxlength="50" required="" value="${assignmentInstance?.subject}"/>
		</div>
	</div>

	<div class="form-group form-horizontal   ${hasErrors(bean: assignmentInstance, field: 'type', 'error')} required">
		<label  class="col-sm-2 control-label">Type</label>
		<div class="col-sm-10">
			<g:select name="type" from="${assignmentInstance.constraints.type.inList}" required="" value="${assignmentInstance?.type}" valueMessagePrefix="assignment.type"/>
		</div>
	</div>

	<div class="form-group ${hasErrors(bean: assignmentInstance, field: 'question', 'error')} required" >
		<label  class="col-sm-2 control-label text-area">Question</label>
		<div class="col-sm-10 col-sx-2">
			<g:textArea name="question" class="form-control form-size" rows="3" required="" value="${assignmentInstance?.question}"/>
		</div>
	</div>

	<div class="form-group ${hasErrors(bean: assignmentInstance, field: 'description', 'error')} required" >
		<label  class="col-sm-2 control-label text-area">Description</label>
		<div class="col-sm-10 col-sx-2">
			<g:textArea name="description" class="form-control form-size" rows="3" required="" value="${assignmentInstance?.description}"/>
		</div>
	</div>


	<div class="form-group form-horizontal">
		<label  class="col-sm-2 control-label">Assign Date</label>
		<div class="col-sm-10 ">
			<g:datePicker name="assignDate" class=" form-control form-size" precision="day"  value="${assignmentInstance?.assignDate}"  />
		</div>
	</div>

	<div class="form-group form-horizontal">
		<label  class="col-sm-2 control-label">Due Date</label>
		<div class="col-sm-10">
			<g:datePicker name="dueDate" class="form-control form-size" precision="day"  value="${assignmentInstance?.dueDate}"/>
		</div>
	</div>

