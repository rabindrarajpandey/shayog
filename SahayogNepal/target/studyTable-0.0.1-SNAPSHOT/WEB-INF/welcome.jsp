<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<meta content="IE=edge" http-equiv="X-UA-Compatible" />
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>Classroom</title>
	

<title>Welcome</title>
</head>
<body>

	<h1 style="border-style: solid; padding: %; background-color: silver;">
		<marquee behavior="alternate" direction="right" scrollamount="4">List
			Of Users</marquee>
	</h1>
<body>
	<table id="customer Profile">
		<P>${msg} </P>
		<tr>
			<th>customerId</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>School</th>
			<th>courseId</th>
			<th>streetry</th>
			<th>apt</th>
			<th>city</th>
			<th>state</th>
			<th>country</th>
			<th>zipcode</th>
			<th>password</th>
			<th></th>
			<th></th>
		</tr>

		<c:forEach var="customer" items="${customerList}">
			<tr>
				<td>${customer.customerId}</td>
				<td>${customer.firstName}</td>
				<td>${customer.lastName}</td>
				<td>${customer.phone}</td>
				<td>${customer.email}</td>
				<td>${customer.customer_rating}</td>
				<td>${customer.address.strStreet}</td>
				<td>${customer.address.strApt}</td>
				<td>${customer.address.strCity}</td>
				<td>${customer.address.strState}</td>
				<td>${customer.address.strCountry}</td>
				<td>${customer.address.intZipCode}</td>
				<td>${customer.password}</td>
				<td><a
					href="${pageContext.request.contextPath}/welcome/edit/${customer.customerId}">Edit</a></td>
				<td><a
					href="${pageContext.request.contextPath}/welcome/delete/${customer.customerId}">Delete</a></td>
			</tr>
		</c:forEach>

	</table>
	<div>
		<form action="/">
			<input type="submit" value="Add NEW USER" />
		</form>
	</div>
</body>

<div class="ex1"
	style="color: windowtext; padding: %; background-color: red; text-align: center;">
	<marquee behavior="scroll" direction="left">The time on the
		server is ${serverTime}.</marquee>
</div>
</html>

