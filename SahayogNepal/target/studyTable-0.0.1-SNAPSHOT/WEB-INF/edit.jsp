<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 100%;
	border-collapse: collapse;
}

#customers td,#customers th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#customers th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#customers tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}

div.ex1 {
	position: absolute;
	bottom: 10px;
	width: 100%;
}
a
</style>
</head>
<body color="#0099FF">
	<h1 style="border-style: solid; padding: %; background-color: silver;">
		<marquee behavior="alternate" direction="right" scrollamount="4">Please
			Edit Your Info</marquee>
	</h1>
	<form:form method="Post" commandName="customer"
		action="/javahawa/welcome/edit/update/${customer.customerId}">
		<table id="customers">



			<tr>
				<th>Id</th>
				<form:errors path="userName" cssClass="error" />
				<th>UserName</th>
				<form:errors path="address" cssClass="error" />
				<th>Address</th>
				<th>Sex</th>
				<form:errors path="sex" cssClass="error" />
				<th>Country</th>
				<form:errors path="country" cssClass="error" />
				<th>password</th>
				<form:errors path="password" cssClass="error" />
				<th>Confirm Password</th>
				<form:errors path="confirmPassword" cssClass="error" />

			</tr>
			<tr>

				<td>${customer.customerId}</td>

				<td><form:input path="userName" /></td>


				<td><form:input path="address" /></td>


				<td><form:radiobutton path="sex" value="M" />M<form:radiobutton
						path="sex" value="F" />F</td>


				<td><form:select style="color: white; background-color:black;"
						path="country">
						<form:option value="" label="--- Select ---" />
						<form:options items="${countryList}" />
					</form:select></td>

				<td><form:input path="password" /></td>
				<td><form:input path="confirmPassword"  /></td>

			</tr>

		</table>

		<div>
			<input type="submit" value="save" />

		</div>
	</form:form>





	<form:form method="POST" commandName="customer"
		action="/javahawa/welcome/edit/update/${customer.customerId}">
		<div>
			<input type="submit" value="Cancel" />
		</div>

		<form:hidden path="customerId" value="${customer.customerId}" />

		<form:hidden path="userName" value="${customer.userName}" />


		<form:hidden path="address" value="${customer.userName}" />


		<form:hidden path="sex" value="${customer.sex}" />

		<form:hidden path="country" value="${customer.country}" />

		<form:hidden path="password" value="${customer.password}" />
		<form:hidden path="confirmPassword" value="${customer.confirmPassword}" />


	</form:form>




</body>
<div class="ex1"
	style="color: windowtext; padding: %; background-color: red; text-align: center;">
	<marquee behavior="scroll" direction="left">The time on the
		server is ${serverTime}.</marquee>
</div>
</html>