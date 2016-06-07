<%--
  Created by IntelliJ IDEA.
  User: sparkle
  Date: 6/6/16
  Time: 9:00 AM
--%>

<%@ page import="assignmentrecorder.Assignment" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>assignmentRecorder</title>
</head>

<body>
<div><H2 class="" id="create" >Create</H2></div>

<form class="form-horizontal">

    <div class="form-group">
        <label  class="col-sm-2 control-label">Id</label>
        <div class="col-sm-10 col-xs-2">
            <input type="text" class="form-control form-size" id="gee" placeholder="id">
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">Subject</label>
        <div class="col-sm-10 col-xs-2">
            <input type="text" class="form-control form-size" id="ge" placeholder="subject">
        </div>
    </div>

    <div class="form-group form-horizontal">
        <label  class="col-sm-2 control-label">Type</label>
        <div class="col-sm-10">
            <input type="text" class="form-control form-size" id="g2" placeholder="type">
        </div>
    </div>

    <div class="form-group ">
        <label  class="col-sm-2 control-label text-area">Description</label>
        <div class="col-sm-10 col-sx-2">
            <textarea class="form-control form-size" rows="3" placeholder="description" id="g"></textarea>
        </div>
    </div>


    <div class="form-group form-horizontal">
        <label  class="col-sm-2 control-label">Assign Date</label>
        <div class="col-sm-10 ">
            <g:datePicker name="myDate" value="${new Date()}"
                          noSelection="['':'-Choose-']"/>
        </div>
    </div>

    <div class="form-group form-horizontal">
        <label  class="col-sm-2 control-label">Due Date</label>
        <div class="col-sm-10">
            <g:datePicker name="myDate" value="${new Date()}"
                          noSelection="['':'-Choose-']"/>
            %{--     <calendar:datePicker name="date" defaultValue="${new Date()}"
                                      noSlection="['':'-Choose']"/>--}%
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Submit</button>
        </div>
    </div>

</form>
</body>
</html>