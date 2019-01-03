<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

<style>
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

div.ex1
{
position:absolute;
bottom:10px;
width:100%;
}
</style>
</head>
<body>

<h1 style="border-style: solid; padding: %; background-color: silver;">
		<marquee behavior="alternate" direction="right" scrollamount="4">List
			Of Users</marquee>
	</h1>

<body>

	<table id="customers">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Address</th>
			<th>Sex</th>
			<th>Country</th>
			<th></th>
			<th></th>
		</tr>

		<c:forEach var="customer" items="${customerList}">
		
		
		
			<tr>
				<td>${customer.customerId}</td>
				<td>${customer.userName}</td>
				<td>${customer.address}</td>
				<td>${customer.sex}</td>
				<td>${customer.country}</td>
				<td><a href="${pageContext.request.contextPath}/welcome/edit/${customer.customerId}">Edit</a></td>
				<td><a href="${pageContext.request.contextPath}/welcome/delete/${customer.customerId}">Delete</a></td>
			</tr>
			
		
		</c:forEach>


	</table>
	
	<div>
<form action="/javahawa/"><input type="submit" value="Home"/></form>
</div>


</body>

<div class="ex1" style="color: windowtext; padding: %; background-color: red; text-align: center;">
	<marquee behavior="scroll" direction="left">The time on the server is ${serverTime}.</marquee>
		</div>
</html>

