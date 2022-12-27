<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.crypto.Data"%>
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
<title>Student Page</title>
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
				<a class="navbar-brand" href="#">ZStudent</a>
			</div>
			<ul class="nav navbar-nav">


				<li><a href="previousstatus">Previous Status</a></li>
				<li><a href="dailyupdates">Daily Updates</a></li>
				<li><a href="currentstatus">Current Status</a></li>




			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						<%
						out.print(session.getAttribute("email"));
						%></a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<div class="container">
		<h3>
			<center>I Did this</center>
		</h3>
		<div class="col-md-12">
			<div class="col-md-6">
				<br>

				<div class="panel panel-default">
					<div class="panel-body">

						<form class="form-horizontal" action="currentstatus" method="post">
							<div class="form-group">
								<label class="control-label col-sm-3" for="candidate">Candidate:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control " id="candidate"
										placeholder="<%out.print(session.getAttribute("email"));%>"
										name="candidate">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3" for="date">Date:</label>
								<div class="col-sm-6">
									<%
									Date date = new Date();
									SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
									%>
									<input type="text" class="form-control " id="date"
										placeholder="<%out.print(formatter.format(date));%>"
										name="date">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3" for="time">Time:</label>
								<div class="col-sm-6">
									<%
									Date time = new Date();
									SimpleDateFormat formatt = new SimpleDateFormat("HH:mm:ss");
									%>
									<input type="text" class="form-control " id="time"
										placeholder="<%out.print(formatt.format(time));%>"
										name="time">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-3" for="idid">I Did:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control " id="idid"
										placeholder="I Did Now" name="idid">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-3">
									<button type="submit" class="btn btn-dark">Submit</button>


								</div>
								<div class="col-sm-3">

									<button type="reset" class="btn btn-dark">Reset</button>

								</div>
							</div>
						</form>
					</div>
				</div>


			</div>
			<br>
				<form class="form-horizontal" action="updateIdidStatus" method="post">
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-body">
						<table class="table table-bordered">

							<tbody>
								<tr>
								
									
									<th>Date</th>
									<td><%out.print(formatter.format(date)); %></td>
								</tr>
								<tr>
								
									
									<th>Check In Status</th>
									<td></td>
								</tr>
								<tr>
								
									
									<th>Check In Time</th>
									<td></td>
								</tr>
								<tr>
									
									
									<th>Check Out Time</th>
									<td></td>
								</tr>

								
								
								<th>I Did This</th>
								<td></td>
							</tbody>
						</table>
						<div class="form-group">
								<div class="col-sm-offset-3 col-sm-3">
									<button type="submit" class="btn btn-dark">Submit</button>


								</div>
								<div class="col-sm-3">

									<button type="reset" class="btn btn-dark">Reset</button>

								</div>
							</div>
					
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>