<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/leftNav.css" />">
    
</head>
<body>
    <section class="lnav">
        <ul>
            <li><a class="home" href="home">Home</a></li>
            <li><a class="savings" href="savingsadvisor">Savings Advisor</a></li>
        </ul>  
    </section>
    
    <script>
    $(document).ready(function(){
    	console.log("document is ready");
    }
    </script>
</body>
</html>