<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Student-Type" content="text/html; charset=UTF-8">
<title>New/Edit Student</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="css/css1.css">
<link rel="stylesheet" type="text/css" href="css/css2.css">
<link rel="stylesheet" type="text/css" href="css/css3.css">
<!-- Latest compiled JavaScript -->
<script src="javascript/app.js"></script>
<script src="javascript/app1.js"></script>
<script src="javascript/app2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/npm.js"></script>
<script src="js/bootstrap.min.js"></script>



<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>
	<div align="center">
		<h1>Edit Student</h1>
		<form:form action="saveStudent" method="post" modelAttribute="student">
			<table class="table table-striped" id="example">
				<form:hidden path="id" />
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Subject:</td>
					<td><form:input path="subject" /></td>
				</tr>
				<tr>
					<td>Mark:</td>
					<td><form:input path="mark" /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:input path="gender" /> <!-- 					<select class="form-control" id="ipsavegender" path="gender"> -->
						<!-- 									<option id="male">Male</option> --> <!-- 									<option id="famale">Female</option> -->
						<!-- 									<option id="male"><b>Other</b></option> --> <!-- 								</select> -->
					</td>
				</tr>


				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>

<script>
		$(document).ready(function() {
			$('#example').DataTable({
			});
		});
	</script>
</html>