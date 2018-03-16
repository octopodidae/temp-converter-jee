<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="fr.blaurancin.tempconverter.models.*"%>
<%
	User user = (User) request.getSession().getAttribute("user");

	if (user == null) {
		System.out.println("no user session");
		response.sendRedirect("login");
	} else {
		System.out.println("session retreived");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Converter page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="./assets/js/bootstrap.min.js"></script>

</head>
<style>
.container {
	width: 400px;
}
</style>
<body cz-shortcut-listen="true">

	<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
		<a class="navbar-brand" href="#">Temp Converter</a>
	</nav>

	<main role="main" class="container">

	<h3>Celcuis value :</h3>
	<form method="post">
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" placeholder="Value"
					name="celcuis">
			</div>
			<div class="col">
				<button type="submit" class="form-control">Convert</button>
			</div>
		</div>
	</form>
	<br>
	<br>
	<h3>Fahrenheit :</h3>
	<%
		if (request.getAttribute("result") != null)
			out.write(request.getAttribute("result").toString());
	%> </main>



</body>
</html>
