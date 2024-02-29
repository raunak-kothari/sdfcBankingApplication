<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<link rel="stylesheet" href="Banking_Project.css">
<style>
body {
	background-image: url("homepage.jpg");
	height: 700px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

h1, h2 {
	background-color: black;
	color: white;
	width: 25%;
	padding: 5px;
	margin: 10px;
	border-radius: 20px;
}

h2 {
	width: 35%;
}

</style>
</head>
<br>
	<div align="center">
		<img alt="error 404" src="sdfc_logo.png">
		<h1>SDFC BANK</h1>
		<h2>EXTRAORDINARY SERVICES</h2>
	</div>
	<br>
	<br>
	<div align="center" class="head">
       <br/><br/><br/>
        <h1 style="color: red;width: 780px;padding: 10px;">Are you sure ??? That you want to close yor account</h1> <br/>
        <h2 style="color: red;width: 1100px;padding: 10px">Note : Once you account is "Closed" you need to visit your nearest SDFC bank to activate your account</h2> <br/>
        <br/><br/><br/>
       <button  style="color: rgb(0, 0, 0);background-color: rgb(190, 22, 22);font-size: 30px;"><a href="/close">Close Account</a></button>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <button  style="color: rgb(0, 0, 0);background-color: rgb(30, 189, 54);font-size: 30px;"><a href="/home"> Return To Home Page </a></button> 
        <br/><br/><br/><br/>
    </div>

</body>
</html>