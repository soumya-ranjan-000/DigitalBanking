<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digital Banking - Savings Advisor</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/home.css" />">
    <style>
    	.savings{
    		font-weight: bold;
    		color: white;
    	}
    </style>
</head>
<body class="hm_container">
    <section class="header">
		<jsp:include page="header.jsp"></jsp:include>
    </section>

    <section class="left_nav">
        <jsp:include page="leftNavigation.jsp"></jsp:include>
    </section>
    <section class="main_body">
			<jsp:include page="savings_adviser.jsp"></jsp:include>
    </section>
</body>
<script>
    $(document).ready(function(){
    	console.log("document is ready");
    }
</script>
</html>