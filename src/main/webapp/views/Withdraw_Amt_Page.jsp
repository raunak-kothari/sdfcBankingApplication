<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Balance Deposit</title>
    <link rel="stylesheet" href="Banking_Project.css" />
    <style>
      body {
        background-image: url("deposit.jpg");
        height: 50%;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
      }

      h1,
      h2 {
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
      <img alt="error 404" src="sdfc_logo.png" />
      <h1>SDFC BANK</h1>
      <h2>EXTRAORDINARY SERVICES</h2>
    </div>

    <div align="center" class="head">
      <table cellspacing="20px" cellpadding="10px" class="t1">
        <tr>
          <th><a href="/home"> Home Page </a></th>
          <th><a href="/viewDetails"> View Details </a></th>
          <th><a href="/depPage"> Deposit </a></th>
          <th><a href="Transfer.jsp"> Transfer </a></th>
          <th><a href="Close_Ac.jsp"> Close A/C </a></th>
        </tr>
      </table>
    </div>
    <br />
    <br />

    <div class="body">
      <form:form action="/withdraw">
        <table cellspacing="15px" align="center">
          <tr>
            <th><br /></th>
          </tr>
          <tr>
            <th class="sub_head">BALANCE WITHDRAW FORM</th>
          </tr>
          <tr>
            <th><br /></th>
          </tr>
          <tr>
            <td>
              <form:input path="acc_no" class="input-box" readOnly="true" />
            </td>
          </tr>

          <tr>
            <td>
              <form:input path="name" class="input-box" readOnly="true" />
            </td>
          </tr>
          <tr>
            <td><form:input path="bal" class="input-box" readOnly="true" /></td>
          </tr>
          <tr>
            <td>
              <input
                type="text"
                name="amt"
                placeholder="Enter Amount To Withdraw"
                class="input-box"
              />
            </td>
          </tr>
          <tr>
            <td>
              <input
                type="password"
                name="pass"
                placeholder="Enter Password"
                class="input-box"
              />
            </td>
          </tr>

          <tr>
            <td><br /></td>
          </tr>
          <tr>
            <td>
              <input type="submit" class="submit" /> &nbsp; &nbsp;
              <input type="reset" class="reset" />
            </td>
          </tr>
          <tr>
            <td><br /></td>
          </tr>
        </table>
      </form:form>
    </div>
  </body>
</html>
