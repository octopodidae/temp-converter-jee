<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
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

	<form class="form-signin" method="post">
	
		<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
		<input type="email" id="inputEmail" name="email" class="form-control" placeholder="zak@xmail.com" >
		<input type="password" id="inputPassword" class="form-control" placeholder="123456" name="password" >
		
		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me">
				Remember me
			</label>
		</div>
		
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign	in</button>
		
		<p class="mt-5 mb-3 text-muted">© Mars 2018</p>
		
	</form>

	</main>



</body>
</html>
