<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance Transfer</title>
<link rel="stylesheet" href="Banking_Project.css">
<style>
body {
	background-image: url("trf.jpg");
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

	<div align="center" class="head">
		<table cellspacing="20px" cellpadding="10px" class="t1">
			<tr>
				<th><a href="/home"> Home Page </a></th>
				<th><a href="/viewDetails"> View Details </a></th>
				<th><a href="/depPage"> Deposit </a></th>
				<th><a href="/withdrawPage"> Withdraw </a></th>
				<th><a href="/transferPage"> Transfer </a></th>
				<th><a href="/Close_Page"> Close A/C </a></th>
			</tr>
		</table>
	</div>
	<br>
	<br>
	<div class="body">
		<form:form action="/transfer">
			<table cellspacing="15px" align="center">
				<tr>
					<th><br></th>
				</tr>
				<tr>
					<th class="sub_head" colspan="2">BALANCE TRANSFER FORM</th>
				</tr>
				<tr>
					<th><br></th>
				</tr>
				<tr>
					<th class="details">Account Number -</th>
					<td><form:input path="acc_no" class="input-box"
							readOnly="true" />
				</tr>

				<tr>
					<th class="details">Account Holder Name -</th>
					<td><form:input path="name" class="input-box" readOnly="true" /></td>
				</tr>

				<tr>
					<th class="details">Available Balance -</th>
					<td><form:input path="bal" class="input-box" readOnly="true" /></td>
				</tr>

				<tr>
					<th class="details">Receiver Account Number -</th>
					<td><input type="text" name="receiver_acc_no"
						placeholder="Please Enter Receiver's Account Number"
						class="input-box"></td>
				</tr>
				<tr>
					<th class="details">Transfer Amount -</th>
					<td><input type="text" name="trf_amt"
						placeholder="Please Enter Amount To Transfer" class="input-box"></td>
				</tr>
				<tr>
					<th><br></th>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="submit">
						&nbsp; &nbsp; <input type="reset" class="reset"></td>
				</tr>
				<tr>
					<th><br></th>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>