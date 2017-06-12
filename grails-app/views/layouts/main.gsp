<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="justified-nav.css"/>
	<asset:javascript src="bootstrap.min.js"/>
	<asset:javascript src="custome.js"/>
	<asset:stylesheet src="custome.css"/>
	%{--<asset:imag src="logo.png"/>--}%

	<g:layoutHead/>
</head>
<body>

<div class="nav navbar-default ">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">assignmentRecorder</a>

		</div>
		<ul id = "navbar" class="nav navbar-nav" >
			<li role="presentation" class="active"><g:link controller="assignment" action="index">Home</g:link> </li>
			<li role="presentation" class="active"><g:link controller="assignment" action="create">Create</g:link> </li>
			<li role="presentation" class="active"><g:link controller="assignment" action="aboutUs">About</g:link> </li>
			<li role="presentation" class="active"><g:link controller="assignment" action="contactUs">Contact</g:link> </li>
		</ul>
	</div>
</div>
<g:layoutBody/>

<footer class="nav-justified footer text-center">
	<div class="panel panel-default">
		<div class="panel-footer">&copy; 2017 assignmnentRecorder</div>
	</div>
</footer>
</body>
</html>
