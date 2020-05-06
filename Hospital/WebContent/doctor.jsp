<%@page import="com.doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/doctor.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Doctor Management V10.1</h1>
				<form id="formDoctor" name="formDoctor">
					Doctor ID: <input id="DoctorID" name="DoctorID" type="text"
						class="form-control form-control-sm"> <br> Doctor
					name: <input id="DoctorName" name="DoctorName" type="text"
						class="form-control form-control-sm"> <br>
					Specialization: <input id="Specialization" name="Specialization"
						type="text" class="form-control form-control-sm"> <br>
					Doctor Contact: <input id="Contact" name="Contact" type="text"
						class="form-control form-control-sm"> <br> Doctor
					Address: <input id="Address" name="Address" type="text"
						class="form-control form-control-sm"> <br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidDIDSave" name="hidDIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divDoctorGrid">
					<%
						doctor doc = new doctor();
						out.print(doc.readDoctor());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>