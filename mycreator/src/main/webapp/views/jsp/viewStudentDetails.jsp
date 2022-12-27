<%@page import="java.util.List"%>
<%@page import="mycreator.model.StudentDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>User Details</title>
<style>
button {
	background-color: #555555;
}

button {
	color: white;
}
</style>
</head>
<body>
	<br>
	<h3>Graduation Studies</h3>
	<br>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">ZAdmin</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="departement">Department</a></li>
				<li><a href="branch">Branch</a></li>
				<li><a href="batchperiod">Batch Period</a></li>
				<li><a href="addnewuser">New User</a></li>
				<li><a href="compliationstatus">Compliation Status</a></li>
				<li><a href="viewStudentDetails">View Student Details</a></li>



			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span><%out.print(session.getAttribute("email")); %></a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<div class="container">
		<h2><center>Departments</center></h2>
		<br>
		
		<div class="col-md-12">
			<div class="row text-right">
				<a href="department/add" class="btn btn-success">Add Department</a>
			</div>
			<br><br>
		  	<table class="table table-hover">
			    <thead>
			      <tr>
			        <th>S.No</th>
			        <th>Department Name</th>
			        <th>Added On</th>
			        <th>Added By</th>
			        <th>Modified On</th>
			        <th>Modified By</th>
			        <th>Action</th>
			      </tr>
			    </thead>
			    <tbody>
			    <%
				List<StudentDetails> listOfStudents = (List<StudentDetails>) request.getAttribute("listOfStudents");
				for(int index = 0; index < listOfStudents.size(); index++) {
					
					out.print("<tr>");
					
					//out.print("<td>"+(index+1)+"</td>");
					//out.print("<td>"+(listOfStudents.get(index).getDepartmentName())+"</td>");
					//out.print("<td>"+(departments.get(index).getDepartmentAddedOn() != null ? departments.get(index).getDepartmentAddedOn() : "-" )+"</td>");
					//out.print("<td>"+(departments.get(index).getDepartmentAddedBy() != null ? departments.get(index).getDepartmentAddedBy() : "-" )+"</td>");
					//out.print("<td>"+(departments.get(index).getDepartmentModifiedOn() != null ? departments.get(index).getDepartmentModifiedOn() : "-" )+"</td>");
					//.print("<td>"+(departments.get(index).getDepartmentModifiedBy() != null ? departments.get(index).getDepartmentModifiedBy() : "-")+"</td>");
					//out.print("<td><a href='department/edit?id="+departments.get(index).getDepartmentId()+"' class='btn btn-primary'>Edit</a> <a href='department/delete?id="+departments.get(index).getDepartmentId()+"' class='btn btn-danger'>Delete</a> </td>");
					
					out.print("</tr>");
				} %>
			    </tbody>
			</table>
					
					
					
			
   		</div>
	</div>
</body>
</html>