<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Registration</title>
<link rel="stylesheet" href="Banking_Project.css">
<style>
body {
	background-image: url("newacc.jpg");
	height: 50%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

h1, h2 {
	background-color: black;
	color: white;
	width: 15%;
	padding: 5px;
	margin: 10px;
	border-radius: 20px;
}

h2 {
	width: 25%;
}
</style>
</head>
<body>
	<div align="center">
		<img alt="error 404" src="sdfc_logo.png">
		<h1>SDFC BANK</h1>
		<h2>EXTRAORDINARY SERVICES</h2>
	</div>



	<br>
	<br>
	<div class="body">

		<form action="/register">
			<table cellspacing="15px" align="center">
				<tr>
					<th><br></th>
				</tr>
				<tr>
					<th class="sub_head">ACCOUNT REGISTRATION OPEN FORM</th>
				</tr>
				<tr>
					<th><br></th>
				</tr>
				<tr>
					<td><input type="text" name="acc_no"
						placeholder="Enter Account Number" class="input-box"></td>
				</tr>
				<tr>
					<td><input type="text" name="name"
						placeholder="Enter Your Full Name" class="input-box"></td>
				</tr>

				<tr>
					<td><input type="password" name="pwd"
						placeholder="Enter Password" class="input-box"></td>
				</tr>
				<tr>
					<td><input type="password" name="c_pwd"
						placeholder="Enter Confirm Password" class="input-box"></td>
				</tr>

				<tr>
					<td><textarea name="addr" placeholder="Enter Full Address"
							class="input-box"></textarea></td>
				</tr>
				<tr>
					<td><input type="text" name="bal" placeholder="Enter Amount"
						class="input-box"></td>
				</tr>

				<tr>
					<td><input type="number" name="mno"
						placeholder="Enter Mobile Number" class="input-box"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td><input type="submit" class="submit"> &nbsp; &nbsp;
						<input type="reset" class="reset"></td>
				</tr>
				
			</table>
		</form>
		
				<form action="/">
			<table cellspacing="15px" align="center">
				<tr>
					<th><br></th>
				</tr>
				<tr>
					<th class="sub_head">TO GOTO LOGIN CLICK HERE</th>

				</tr>

				<tr>
					<td><input type="submit" class="submit" value="Login"></td>

				</tr>
				<tr>
					<th><br></th>
				</tr>


			</table>
		</form>


	</div>


</body>
</html>