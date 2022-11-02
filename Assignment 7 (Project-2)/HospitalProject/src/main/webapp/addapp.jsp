<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book an appointment</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<style>
form {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body class="bg-warning p-3 mb-2">
	<h1 class="display-4 fw-normal text-center m-5">Enter appointment details</h1>
	<form action="AddappServlet" method="post">
		<div class="form-group row ">
			<label for="a_id" class="col-sm-2 col-form-label">Appointment ID:</label>
			<div class="col-sm-10">
				<input type="text" name="a_id" maxlength="8"
					class="form-control shadow p-2 mb-3" id="a_id"
					placeholder="Enter appointment_id" required>
			</div>
		</div>
		<div class="form-group row ">
			<label for="p_id" class="col-sm-2 col-form-label">Patient ID:</label>
			<div class="col-sm-10">
				<input type="text" name="p_id" maxlength="8"
					class="form-control shadow p-2 mb-3" id="p_id"
					placeholder="Enter patient_id">
			</div>
		</div>
		<div class="form-group row ">
			<label for="d_id" class="col-sm-2 col-form-label">Doctor ID:</label>
			<div class="col-sm-10">
				<input type="text" name="d_id" maxlength="8"
					class="form-control shadow p-2 mb-3" id="d_id"
					placeholder="Enter doctor_id">
			</div>
		</div>
		<div class="form-group row ">
			<label for="dt" class="col-sm-2 col-form-label">Appointment Date:</label>
			<div class="col-sm-10">
				<input type="date" name="dt"
					class="form-control shadow p-2 mb-3" id="dt"
					placeholder="Enter appointment date" required>
			</div>
		</div>
		<div class="form-group row ">
			<label for="diag" class="col-sm-2 col-form-label">Diagnosis:</label>
			<div class="col-sm-10">
				<input type="text" name="da" maxlength="50"
					class="form-control shadow p-2 mb-3" id="diag"
					placeholder="Enter diagnosis">
			</div>
		</div>
		
		<button type="submit"
			style="width: 100%; margin: auto; display: block;"
			class="btn btn-primary form-control shadow p-2 my-3">Submit</button>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>