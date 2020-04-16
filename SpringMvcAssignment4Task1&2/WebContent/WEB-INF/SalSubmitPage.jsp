<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMI Calculation</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<h1 align="center">Salary Calculation</h1>
	<div class="col-md-10 text-right">
		<a class="btn btn-danger" href="home">Home</a>
	</div>
	<hr />
	<table class="col-md-4 table table-striped mx-auto">
		<tr>
			<td>Employee ID</td>
			<td>${emodel.eid}</td>
		</tr>

		<tr>
			<td>Employee Name</td>
			<td>${emodel.ename}</td>
		</tr>

		<tr>
			<td>Basic Salary</td>
			<td>${pf}</td>
		</tr>
		
		<tr>
			<td>Basic Salary</td>
			<td>${allowances}</td>
		</tr>
		
		<tr>
			<td>Basic Salary</td>
			<td>${netsal}</td>
		</tr>
		


	</table>

</body>
</html>