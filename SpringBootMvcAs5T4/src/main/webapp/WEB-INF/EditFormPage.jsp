<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Emp Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></head>
<body>
	<h1 align="center">Emp Management</h1>
	<div class="text-center"><a class="btn btn-danger" href="home">Home</a></div>
	<hr/>
	<h2 class="text-center">Edit Employee</h2>
	<form action="add" method="post">
		<table class="col-md-4 table table-striped mx-auto">
			<tr>
				<td>Emp ID</td>
				<td><input type="number" required="required" name="empId" value="${emodel.empId}" class="form-control"/></td>
			</tr>
			<tr>
				<td>Emp Name</td>
				<td><input type="text" required="required" name="empName" value="${emodel.empName}" /></td>
			</tr>
			<tr>
				<td>Emp Sal</td>
				<td><input type="number" required="required" name="empSal" value="${emodel.empSal}" /></td>
			</tr>
			<tr>
				<td>Dept</td>
				<td>
					<input type="text" readonly class="form-control" name="dept.deptName" value="${emodel.dept.deptName}" />
					<input type="hidden" name="dept.deptId" value="${emodel.dept.deptId}" />
				</td>
			</tr>
			<tr>
				<td>DOJ</td>
				<td>
					<input type="date" required name="doj" value="${emodel.doj}" />
					<input type="hidden" name="txtdept" value="${param.dname}" />
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form>
	
	
	
</body>
</html>