<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap"
	rel="stylesheet">
<style>
form {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body class="bg-warning p-3 mb-2">
	<h1 class="display-4 fw-normal text-center m-5">Welcome to Hospital Management System</h1>
	<form action="adminlog.jsp" method="post">
		<button type="submit"
			style="width: 100%; margin: auto; display: block;"
			class="btn btn-primary form-control shadow p-2 my-3">Admin Login</button>
	</form>
	<form action="doclog.jsp" method="post">
		<button type="submit"
			style="width: 100%; margin: auto; display: block;"
			class="btn btn-primary form-control shadow p-2 my-3">Doctor Login</button>
	</form>
	<form action="patlog.jsp" method="post">
		<button type="submit"
			style="width: 100%; margin: auto; display: block;"
			class="btn btn-primary form-control shadow p-2 my-3">Patient Login</button>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>