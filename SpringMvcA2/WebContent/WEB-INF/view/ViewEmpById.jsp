<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Emp Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></head>
<body>
<h1 align="center">Emp Management</h1>
<div class="text-center"><a class="btn btn-danger" href="home">Home</a></div><hr/>
<h2 class="text-center mb-5">View Employee By Id</h2>

<div class="col-md-6 m-auto">
	<form action="searchbyid">

		<div class="form-row m-auto align-items-center">
			<div class="col-auto mr-3">
				<h5>Employee ID</h5>
			</div>
			<div class="col-auto">
				<input
					type="number" 
					class="form-control mb-2" 
					id="empid"
					name="id"
					placeholder="Enter Id"
				>
			</div>
			<div class="col-auto">
				<button type="submit" class="btn btn-primary mb-2">Submit</button>
			</div>
		</div>

	</form>
	
	<table class="table table-striped">
	  <tbody>
	    <tr>
	      <td>Employee Name</td>
	      <td>${ emp.empName }</td>
	    </tr>
	    <tr>
	      <td>Employee Name</td>
	      <td>${ emp.empSal }</td>
	    </tr>
	    <tr>
	      <td>DOJ</td>
	      <td>${ emp.strDoj }</td>
	    </tr>
	    <tr>
	      <td>Department</td>
	      <td>${ emp.dept.deptName }</td>
	    </tr>
	  </tbody>
	</table>
</div>	
</body>
</html>