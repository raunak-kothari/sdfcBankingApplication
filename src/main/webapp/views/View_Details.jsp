<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
  <link rel="stylesheet" href="Banking_Project.css" />
  <style>
    body {
      background-image: url("login.jpg");
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
        <th><a href="/depPage"> Deposit </a></th>
        <th><a href="/withdrawPage"> Withdraw </a></th>
        <th><a href="/transferPage"> Transfer </a></th>
        <th><a href="/Close_Page"> Close A/C </a></th>
      </tr>
    </table>
  </div>
  <br />
  <br />
  <div align="center">
    <form:form>
      <table class="details_Column">
        <tr>
          <th colspan="2"><br /></th>
        </tr>
        <tr>
          <th class="sub_head" colspan="2">Account Details</th>
        </tr>
        <tr>
          <th colspan="2"><br /></th>
        </tr>
        <tr>
          <th class="details">Account Number -</th>
          <td>
            <form:input path="acc_no" class="input-box" readOnly="true" />
          </td>
        </tr>
        <tr>
          <th class="details">Account Holder Name -</th>
          <td><form:input path="name" class="input-box" readOnly="true" /></td>
        </tr>

        <tr>
          <th class="details">Residence Address -</th>
          <td><form:input path="addr" class="input-box" readOnly="true" /></td>
        </tr>

        <tr>
          <th class="details">Available Balance -</th>
          <td><form:input path="bal" class="input-box" readOnly="true" /></td>
        </tr>

        <tr>
          <th class="details">Mobile Number -</th>
          <td><form:input path="mno" class="input-box" readOnly="true" /></td>
        </tr>
        <tr>
          <th class="details">Account Status-</th>
          <td><form:input path="status" class="input-box" readOnly="true" /></td>
        </tr>
      </table>
    </form:form>
    <br
  </div>
</body>
