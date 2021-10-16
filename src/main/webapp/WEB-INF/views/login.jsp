<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Digital Banking – Login</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/login.css" />">
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
</head>
<body>
	<div class="body_content">
		<div>
			<div class="login_form">
				<%
				String error = (String) request.getAttribute("error");
				if (error != null) {
					if (error.equals("error")) {
				%>
				<div id="ErrorMsg">
					<h2>Invalid Credentials</h2>
				</div>
				<%
				 }
				}
				%>

				<form action="login" method="post" name="loginForm"
					onsubmit="return validateForm()">
					<table>
						<tr>
							<td><label for="">Admin User Name</label></td>
							<td><input type="text" id="UserName" name="username"></td>
						</tr>
						<tr>
							<td><label for="">Admin Password</label></td>
							<td><input type="text" id="Password" name="password"></td>
						</tr>
					</table>

					<input class="btn" type="submit" value="login" id="login">

				</form>
			</div>
		</div>
	</div>
<script type="text/javascript">

$(document).ready(function(){
	console.log("document is ready");
}
//validate form or check empty string
function validateForm() {
        let errorDiv=document.getElementById("ErrorMsg");
	  var x = document.forms["loginForm"]["UserName"].value; 
      var y = document.forms["loginForm"]["Password"].value;

	  if (x == "" || x == null || y == "" || y == null) {
	    errorDiv.classList.remove("hide");
	    return false;
	  }
     else if (!/^[a-zA-Z]*$/g.test(x)) {
        errorDiv.classList.remove("hide");
        return false;
      }
	}
</script>
</body>
</html>