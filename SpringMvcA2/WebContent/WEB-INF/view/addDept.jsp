<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<body>
	<h1 class="text-center">ADD Department</h1>
	<div class="col-md-10 text-right"><a class="btn btn-danger" href="home.htm">home</a></div><hr />
	
	<c:if test="${msg ne null}">
	  <div class="col-md-4 mx-auto alert alert-danger">${msg}</div>
	</c:if>
	
	<sf:form action="processDeptForm" method="post" modelAttribute="dept">
		<table class="col-md-8 table table-striped mx-auto">
			<tr>
				<td><sf:input class="form-control" placeholder="Enter Department Name" path="deptName"/></td>
			</tr>
			<tr><td colspan="3"><input class="btn btn-success" type="submit"/></td></tr>
		</table>
	</sf:form>
</body>
</html>
