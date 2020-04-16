<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<body>
	<h1 class="text-center">ADD Employee Details</h1>
	<div class="col-md-10 text-right">
		<a class="btn btn-danger" href="home.htm">home</a>
	</div>
	<hr />
	
	<c:if test="${msg ne null}">
	  <div class="col-md-4 mx-auto alert alert-danger">${msg}</div>
	</c:if>

	<div class="col-md-6 m-auto">
		
		<form action="processEmpForm" method="post">
			<div class="form-group">
				<label for="empName">Employee Name</label> 
				<input
					type="text" 
					class="form-control" 
					id="empName"
					placeholder="Enter Name"
					name="empName"
				> 
			</div>
			<div class="form-group">
				<label for="empAmount">Employee Salary</label> 
				<input
					type="number" 
					class="form-control" 
					id="empAmount"
					placeholder="Enter Salary"
					name="empSal"
				> 
			</div>
			<div class="form-group">
				<label for="empDOJ">Employee Date of Join</label> 
				<input
					type="date" 
					class="form-control" 
					id="empDOJ"
					placeholder="Enter Salary"
					name="doj"
				> 
			</div>
			 <div class="form-group">
			    <label for="exampleFormControlSelect1">Select Department</label>
			    <select name="dept.deptId" name="" class="form-control" id="exampleFormControlSelect1">
			      <c:forEach items="${ dlist }" var="dept">
			      	<option value="${dept.deptId}">${dept.deptName}</option>
			      </c:forEach>
			    </select>
			  </div>
		
			<button type="submit" class="btn btn-primary">Submit</button>
	</form>
		
	</div>
	

</body>
</html>
