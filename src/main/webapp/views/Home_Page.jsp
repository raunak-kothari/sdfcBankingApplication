<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Homepage</title>
    <link rel="stylesheet" href="Banking_Project.css" />
    <style>
      body {
        background-image: url("homepage.jpg");
        height: 700px;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
      }

      h1,
      h2 {
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
  <body>
    <div align="center">
      <img alt="error 404" src="sdfc_logo.png" />
      <h1>SDFC BANK</h1>
      <h2>EXTRAORDINARY SERVICES</h2>
    </div>
    <br />
    <br />
    <div align="center" class="head">
      <table cellspacing="20px" cellpadding="10px" class="t1">
        <tr>
          <th><a href="/viewDetails"> View Details </a></th>
          <th><a href="/depPage"> Deposit </a></th>
          <th><a href="/withdrawPage"> Withdraw </a></th>
          <th><a href="/transferPage"> Transfer </a></th>
          <th><a href="/Close_Page"> Close A/C </a></th>
          <th><a href="/about">About Us </a></th>
          <th><a href="/">Log Out</a></th>
        </tr>
      </table>
    </div>
  </body>
</html>
