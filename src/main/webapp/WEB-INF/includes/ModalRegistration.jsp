    <style>
.modal-header, h4, .close {
	background-color: #5bc0de;
	color: white !impoter;
	font-size: 20px;
}
</style>

<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>NETBOOK</title>
	</head>
<div class="container">
	<!-- Trigger the modal with a button -->
	<!-- Modal -->
	<div class="modal fade" id="registration" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="background-color: #5bc0de;">
					<h5>NETBOOK Registration</h5>
				</div>
				<div class="modal-body" style="padding: 30px 50px;">
					<form role="form" data-ng-submit="submit()"
						data-ng-controller="RegController" method="post">
						<div class="form-group form-group-sm">
						<div class="form-group">
								<div class="input-group-addon">
									<i class="fa fa-user fa">Your Name</i>
								</div>
								<input type="text" class="form-control" placeholder="Name"
									data-ng-model="name">
							</div>	
							<br>
							<div class="form-group">
								<div class="input-group-addon">
									<i class="fa fa-users fa">Username</i>
								</div>
								<input type="text" class="form-control" placeholder="Username"
									data-ng-model="username">
							</div>
							<br>
							<div class="form-group">
								<div class="input-group-addon">
									<i class="fa fa-lock">Password</i>
								</div>
								<input type="password" class="form-control"
									placeholder="Password" data-ng-model="password">
							</div>
							<br>
							<div class="form-group">
								<div class="input-group-addon">
									<i class="fa fa-lock ">Confirm_Password</i>
								</div>
								<input type="password" class="form-control"
									data-ng-model="Confirm_Password"
									placeholder="Re Enter Password">
							</div>
							<br>
							<div class="form-group">
								<div class="input-group-addon">
									<i class="fa fa-envelope fa">Email</i>
								</div>
								<input type="email" class="form-control" placeholder="Email"
									data-ng-model="email">
							</div>
							<br>
							<div class="form-group">
								<div class="input-group-addon">
									<i class="fa fa-mobile"> Mobile Number</i>
								</div>
								<input type="text" class="form-control"
									placeholder="Mobile Number" data-ng-model="mobile">
							</div>
							<br>
							<div class="form-group">
								<label class="radio-inline"> <input type="radio"
									name="optradio" value="Male" data-ng-model="gender">Male
								</label> <label class="radio-inline"> <input type="radio"
									value="Female" name="optradio" data-ng-model="gender">Female
								</label>
							</div>
						</div> 	
						<br>
						<button type="submit" class="btn btn-info  btn-block login-button">
							<span class="glyphicon glyphicon-off"></span> Register
						</button>
					</form>
				</div> 
				
			</div>

		</div>
	</div>
</div> 
<script>
	$(document).ready(function() {
		$("#reg").click(function() {
			$("#registration").modal();
		});
	});
</script>
