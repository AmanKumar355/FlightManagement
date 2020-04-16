<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Emp Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></head>
<body>
<h1 align="center">Emp Management</h1>
<div class="text-center"><a class="btn btn-danger" href="home">Home</a></div><hr/>
<h4 class="text-center">View Employees by Department</h4>
<c:if test="${ deptName ne null }">
	<h4 class="text-center mb-3">${ deptName }</h4>
</c:if>
<div class="col-md-8 m-auto">
		
	<form action="searchbydept">
	
		<div class="form-row m-auto align-items-center">
			<div class="col-auto mr-3">
				<h5>Department Name</h5>
			</div>
			<div class="col-md-6">
				<div class="form-group">
			    <select name="deptName" name="" class="form-control" id="exampleFormControlSelect1">
			    	<option selected>Select...</option>
			      <c:forEach items="${ dlist }" var="dept">
			      	<option value="${dept.deptName}">${dept.deptName}</option>
			      </c:forEach>
			    </select>
			  </div>
			</div>
			<div class="col-auto">
				<button type="submit" class="btn btn-primary mb-2">Submit</button>
			</div>
		</div>
		
	</form>
		
</div>
	<table class ="col-md-8 mt-3 table table-striped mx-auto">
		<tr>
			<td>Emp ID</td>
			<td>Emp Name</td>
			<td>Salary</td>
			<td>Dept</td>
			<td>DOJ</td>
			<td>Edit</td>
			<td>Delete</td>
		</tr>
		<c:forEach items="${elist}" var="e">
		   <tr>
			<td>${e.empId}</td>
			<td>${e.empName}</td>
			<td>${e.empSal}</td>
			<td>${e.dept.deptName}</td>
			<td>${e.strDoj}</td>
			<td><a href="edit?txteid=${e.empId}&dname=${param.txtdept}" class="btn btn-success">Edit</a>
			<td><a href="delete?txteid=${e.empId}&dname=${param.txtdept}" class="btn btn-danger">Delete</a>
		</tr>
		</c:forEach>
	</table>
</body>
</html>