<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
		"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<div class="well" width="100%">
	<header">
	<meta http-equiv="Student-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Student-Type" content="text/html; charset=UTF-8">
	<title>Student Management Home</title>
	<meta charset="utf-8">
	<script type="text/javascript" src="javascript/jquery-1.12.4.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
		integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
		crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
		integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
		crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript --> <script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css"
		href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="css/css1.css">
	<link rel="stylesheet" type="text/css" href="css/css2.css">
	<link rel="stylesheet" type="text/css" href="css/css3.css">
	<!-- Latest compiled JavaScript --> <script src="javascript/app.js"></script>
	<script src="javascript/app1.js"></script> <script
		src="javascript/app2.js"></script> <script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

	<style type="text/css">
.example {
	margin: 5px;
}
</style>
	<ul class="nav nav-tabs" role="tablist">
		<li class="active"><a href="#"><span
				class="glyphicon glyphicon-home"></span><b>Home</b></a></li>
		<li><a href="#"><span class="glyphicon glyphicon-lock"></span>
				<b>Class</b></a></li>
		<li><a href="#"><span class="glyphicon glyphicon-comment"></span>
				<b>Student</b></a></li>
		<li><a href="#"><span class="glyphicon glyphicon-home"></span><b>View
					Mark</b></a></li>
		<li><a href="#"><span class="glyphicon glyphicon-lock"></span>
				<b>Test Online</b></a></li>
		<li><a href="#"><span class="glyphicon glyphicon-comment"></span>
				<b>More</b></a></li>
	</ul>

	</header>
	<body>
		<section> <article>
		<div class="col-xs-4">
			<label for="exampleInputEmail1">Search by name</label>
			<input
				type="text" class="form-control" placeholder="Enter the name"
				id="ipname">
				<label
				for="exampleInputEmail1">Search by subject
				</label>
				<input type="text" class="form-control"
				placeholder="Enter the subject" id="ipsubject">
				<label
				for="exampleInputEmail1">Choose gender
				</label>
			<div>
				<select class="form-control" id="slgender">
					<option id="male"><b>Gender</b></option>
					<option id="male">Male</option>
					<option id="famale">Female</option>
				</select> <label></label>
			</div>
			<button type="submit" class="btn btn-default" id="btnname">
				<span class="glyphicon glyphicon-ok"></span>Submit
			</button>
		</div>
		</article>
		<table id="example" class="display" cellspacing="0" width="95%">
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>SUBJECT</th>
					<th>MARK</th>
					<th>AGE</th>
					<th>GENDER</th>
					<th>
						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#myModal">
							<span class="glyphicon glyphicon-ok"></span>Add new student
						</button>
					</th>
				</tr>
			</thead>
		</table>

		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-body"></div>


		</div>
		</article> </section>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add new Student</h4>
					</div>
					<div class="modal-body">

						<table class="table table-striped">
							<tr>
								<td>Name:</td>
								<td><input id="ipsavename" /></td>
							</tr>
							<tr>
								<td>Subject:</td>
								<td><input id="ipsavesubject" /></td>
							</tr>
							<tr>
								<td>Mark:</td>
								<td><input id="ipsavemark" /></td>
							</tr>
							<tr>
								<td>Age:</td>
								<td><input id="ipsaveage" /></td>
							</tr>
							<tr>
								<td>Gender:</td>
								<td><input id="ipsavegender" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="btnaddnew">Save</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="myModalEdit" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Edit Student</h4>
					</div>
					<div class="modal-body">

						<table class="table table-striped">
							<input id="id" type="hidden" />
							<tr>
								<td>Name:</td>
								<td><input id="editname" /></td>
							</tr>
							<tr>
								<td>Subject:</td>
								<td><input id="editsubject" /></td>
							</tr>
							<tr>
								<td>Mark:</td>
								<td><input id="editmark" /></td>
							</tr>
							<tr>
								<td>Age:</td>
								<td><input id="editage" /></td>
							</tr>
							<tr>
								<td>Gender:</td>
								<td><input id="editgender" /></td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="btnedit">Update</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="delete" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Delete Student</h4>
					</div>
					<div class="modal-body">
						<input id="iddelete" type="hidden" />
						<p id="namedelete"></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="btndelete">Delete</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</body>
	<!-- ************************SCRIPT*********************** -->
	<!-- ************************SCRIPT*********************** -->

	<script>
		$(document)
				.ready(
						function() {
							$('#example')
									.DataTable(
											{
												"columnDefs" : [ {
													"targets" : 6,
													"render" : function(data,
															type, full, meta) {
														return "<a class='btn btn-default' data-toggle='modal' data-target='#myModalEdit' data-id='"+full.id+"' data-editname='"+full.name+"' data-editsubject='"+full.subject+"' data-editmark='"+full.mark+"' data-editage='"+full.age+"' data-editgender='"+full.gender+"'>Edit</a><a data-toggle='modal' data-target='#delete' class='btn btn-default' data-id='"+full.id+"' data-deletename='"+full.name+"'>Delete</a>";
													}
												} ],
												"paging" : true,

												"bServerSide" : false,

												"bDestroy" : true,
												fixedColumns : true,
												'ajax' : {
													method : "POST",
													url : "/Spring-BASE/searchStudent",
													data : function(d) {
														d.name = $("#ipname")
																.val();
														d.subject = $(
																"#ipsubject")
																.val();
														d.gender = $(
																"#slgender option:selected")
																.text();
													}
												},
												'serverSide' : true,
												columns : [ {
													data : "id"
												}, {
													data : "name"
												}, {
													data : "subject"
												}, {
													data : "mark"
												}, {
													data : "age"
												}, {
													data : "gender"
												} ],
											});
							$('#myModalEdit')
									.on(
											'show.bs.modal',
											function(event) {
												console.log(event,
														$(event.relatedTarget))
												var button = $(event.relatedTarget); // Button that triggered the modal
												var id = button.data('id');
												var name = button
														.data('editname');
												var subject = button
														.data('editsubject');
												var mark = button
														.data('editmark');
												var age = button
														.data('editage');
												var gender = button
														.data('editgender');
												// 				  console.log(id,name, subject);
												var modal = $(this);
												// 				  console.log(modal.find('#data-ipsavename'))
												modal.find('#editname').val(
														name);
												modal.find('#editsubject').val(
														subject);
												modal.find('#editmark').val(
														mark);
												modal.find('#editage').val(age);
												modal.find('#editgender').val(
														gender);
												modal.find('#id').val(id);
											});
							$('#delete').on(
									'show.bs.modal',
									function(event) {
										console.log(event,
												$(event.relatedTarget))
										var button = $(event.relatedTarget); // Button that triggered the modal
										var iddelete = button.data('id');
										var deletename = button
												.data('deletename');
										console.log("name : " + deletename);

										$('#namedelete').text(
												"Do you want to delete "
														+ deletename);
										var modal = $(this);
										modal.find('#iddelete').val(iddelete);
										modal.fin('#namedelete')
												.val(deletename);
									});
						});
	</script>

	<script>
		$("#btnname").click(function() {
			$('#example').DataTable().ajax.reload(null);
		});
	</script>

	<script>
		$("#btnaddnew").click(
				function() {
					$.ajax({
						method : "POST",
						url : "/Spring-BASE/saveStudent",
						data : {
							name : $("#ipsavename").val(),
							subject : $("#ipsavesubject").val(),
							mark : $("#ipsavemark").val(),
							age : $("#ipsaveage").val(),
							gender : $("#ipsavegender").val(),
						}
					}).done(
							function(msg) {
								alert("Saved student " + $("#ipsavename").val()
										+ " into Student list!");
								$('#example').DataTable().ajax.reload(null);
							});
				});
	</script>
	<script>
		$("#btnedit").click(
				function() {
					$.ajax({
						method : "POST",
						url : "/Spring-BASE/editstudent",
						data : {

							name : $("#editname").val(),
							subject : $("#editsubject").val(),
							mark : $("#editmark").val(),
							age : $("#editage").val(),
							gender : $("#editgender").val(),
							id : $("#id").val(),
						}
					}).done(
							function(msg) {
								alert("Saved student " + $("#editname").val()
										+ " into Student list!");
								$('#example').DataTable().ajax.reload(null);
							});
				});
	</script>
	<script type="text/javascript">
		$('#btndelete').click(
				function() {
					$.ajax({
						method : "POST",
						url : "/Spring-BASE/deleteStudent",
						data : {
							id : $("#iddelete").val(),
						}
					}).done(
							function(msg) {
								alert("Saved student " + $("#editname").val()
										+ " into Student list!");
								$('#example').DataTable().ajax.reload(null);
							});
				});
	</script>
</html>