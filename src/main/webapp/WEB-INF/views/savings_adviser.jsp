<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
     -->
    <link rel="stylesheet" href="<c:url value="/resources/css/savings.css"/>">
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
</head>

<body>
    <section class="sav_container">
       <div id="ErrorMsg" class="hide">Invalid Input</div>
        <table>
            <thead>
                <th>Welcome to Savings Advisor</th>
            </thead>
            <tbody id="typeOfCust">
                <tr>
                    <td>
                        <input type="radio" name="CustomerType" id="NewCustomerRadio" value="New Customer">New
                        Customer</input>
                        <input type="radio" name="CustomerType" id="ExistingCustomerRadio"
                            value="Existing Customer">Existing Customer</input>
                    </td>
                </tr>
            </tbody>
        </table>
        
        <div id="newCust_Form" class="hide">

            <table>
                <tr>
                    <td><label for="Age" id="LblAge">Age</label></td>
                    <td><input type="text" id="Age" name="age"></td>
                </tr>
                <tr>
                    <td><label for="Income" id="LblIncome">Income</label></td>
                    <td><input type="text" id="Income" name="income"></td>
                </tr>
            </table>
            <button id="NewCustomerSubmit">Submit</button>

        </div>
        <div id="existCust_Form" class="hide">

            <table>
                <tr>
                    <td><label for="LastMonthBalance" id="LblLastMonthBalance">Last month balance</label></td>
                    <td><input type="text" id="LastMonthBalance" name="LastMonthBalance"></td>
                </tr>
                <tr>
                    <td><label for="LastBeforeMonthBalance" id="LblLastBeforeMonthBalance">Last before month
                            balance</label></td>
                    <td><input type="text" id="LastBeforeMonthBalance" name="LastBeforeMonthBalance"></td>
                </tr>
            </table>
            <button id="ExistingCustomerSubmit">Submit</button>
        </div>

        <div id="plantab" class="plan_hide">
            <p>Plans</p>
            <table>
                <thead>
                    <th id="SNO">SNO</th>
                    <th id="PlanName">Plan Name</th>
                    <th id="Amount">Amount</th>
                    <th id="Tenurse">Tenure</th>
                    <th id="PlanType">Plan Type</th>
                </thead>
                <tbody>
                    <tr id="r1" class="plan_hide">
                        <td id="Sno1">1</td>
                        <td id="Plan1">Bronze</td>
                        <td id="Amount1">1000</td>
                        <td id="Tenure1">3</td>
                        <td id="PlanType1">RD</td>
                    </tr>
                    <tr id="r2" class="plan_hide">
                        <td id="Sno2">2</td>
                        <td id="Plan2">Silver</td>
                        <td id="Amount2">1250</td>
                        <td id="Tenure2">3</td>
                        <td id="PlanType2">RD</td>
                    </tr>
                    <tr id="r3" class="plan_hide">
                        <td id="Sno3">3</td>
                        <td id="Plan3">Gold</td>
                        <td id="Amount3">1500</td>
                        <td id="Tenure3">3</td>
                        <td id="PlanType3">RD</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </section>
    <script src="<c:url value="/resources/js/savings.js"/>"></script>
</body>
</html>