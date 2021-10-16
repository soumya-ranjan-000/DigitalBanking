<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
</head>
<body>
    <div class="header">
        <div class="c1">
            <h1 id="BankNameTitle">My Bank Buddy</h1>
        </div>
        <div class="c2">
            <button id="Logout"><a href="logout">Logout</a></button>
            <p id="WelcomeMsg">Welcome ${activeUser.username}</p>
        </div>
    </div>
    
    <script>
    $(document).ready(function(){
    	console.log("document is ready");
    }
    </script>
</body>
</html>