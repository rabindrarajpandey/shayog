<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<meta content="IE=edge" http-equiv="X-UA-Compatible" />
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>Join Us</title>
	<!-- <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700,500,900,300italic,300' rel='stylesheet' type='text/css'> --><!-- Bootstrap -->
	<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/slick.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/slick-theme.css" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Lato:400,300,700,900" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet" type="text/css" />
	<link href="fonts/fa/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="row wrapper">
<div class="header">
<div class="col-md-4 col-sm-6 col-xs-6 header-left"><img alt="logo" class="img-responsive" src="resources/images/logo.png" /></div>
<!-- header-left -->

<div class="col-md-3 col-md-offset-5 col-sm-6 col-xs-6 header-right">
<div class="social-media"></div>
</div>
<!-- header-left --></div>
<!--end of header  -->

<div class="clearfix"></div>

<div class="row rum-form">
<div class="class-desc">
<p>Welcome to <b>StudyTable</b></p>
</div>
<!-- class-desc -->

<div class="col-md-4 col-sm-5 col-xs-12 rum-form-left">
<div class="rum-left">
<div class="run-left-img"><img alt="sharesc" class="img-responsive" src="resources/images/SHRESC.png" /></div>

<div class="run-left-img"><img alt="register2" class="img-responsive" src="resources/images/register2.png" /></div>

<div class="run-left-img"><img alt="signup" class="img-responsive" src="resources/images/signup.jpg" /></div>
</div>
<!-- rum-left --></div>
<!-- rum-form-left -->

<div class="col-md-8 col-sm-7 col-xs-12 rum-form-right">
<div class="rum-right">
<h3>Sign Up</h3>

<p>Fill in the form below to get registered.</p>

<div class="c">
		<form:form method="POST" commandName="new_customer" action="welcome">

			<table>
				<tr>
			
			
					<td><form:input path="customerId"  placeholder="customerId" /></td>
					<td><form:errors path="customerId" cssClass="error"></form:errors></td>
				</tr>
				<tr>
				<td>First Name</td>
					<td><form:input path="firstName" placeholder="first Name" /></td>
					<td><form:errors path="firstName" cssClass="error"></form:errors></td>

				
					<td>Last Name</td>
					<td><form:input path="lastName" placeholder="last Name"/></td>
					<td><form:errors path="lastName" cssClass="error"></form:errors></td>

				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email" placeholder="email"/></td>
					<td><form:errors path="email" cssClass="error"></form:errors></td>
					
					
					<td><form:hidden path="customer_rating" value="1" placeholder="customer_rating"/></td>
					<td><form:errors path="customer_rating" cssClass="error"></form:errors></td>

				</tr>
				<tr>
				<tr>
					<td>Phone</td>
					<td><form:input path="phone" placeholder="phone"/></td><p> ${userError}</p>
					<td><form:errors path="phone" cssClass="error"></form:errors>
				</tr>
				
			<tr>
					<td>Street</td>
					<td><form:input path="address.strStreet" placeholder="street" /></td><p>${userError}</p>
					<td><form:errors path="address.strStreet" cssClass="error"></form:errors>
				
					<td>Apt</td>
					<td><form:input path="address.strApt" placeholder="apt" /></td><p>${userError}</p>
					<td><form:errors path="address.strApt" cssClass="error"></form:errors>
				</tr>
				
				<tr>
					<td>City</td>
					<td><form:input path="address.strCity" placeholder="city" /></td><p>${userError}</p>
					<td><form:errors path="address.strCity" cssClass="error"></form:errors>
				
					<td>State</td>
					<td><form:input path="address.strState" placeholder="state"/></td><p>${userError}</p>
					<td><form:errors path="address.strState" cssClass="error"></form:errors>
				</tr>
				
					<tr>
					<td>Country</td>
					<td><form:input path="address.strCountry" placeholder="country" /></td><p>${userError}</p>
					<td><form:errors path="address.strCountry" cssClass="error"></form:errors>
				
					<td>ZipCode</td>
					<td><form:input path="address.intZipCode" placeholder="zipCode" /></td><p>${userError}</p>
					<td><form:errors path="address.intZipCode" cssClass="error"></form:errors>
				
				</tr>
				
				<tr>
					<td>Password :</td>
					<td><form:password path="password" placeholder="password"/></td>
					<td><form:errors path="password" cssClass="error"></form:errors></td>
				
					
				</tr>


			</table>
			<input class="btn btn-default" type="submit" value="Register" />
		</form:form>
		<a href="<c:url value="/"/>">Home</a>
	</div>
<!-- rum-right --></div>
<!-- rum-form-right --></div>
<!-- rum-form --></div>
<!-- wrapper --><!-- jQuery --><script src="resources/js/jquery.min.js"></script><script src="resources/js/slick.min.js"></script><script src="resources/js/js-migrade.js"></script><script>


    $(document).ready(function(){
    $('.rum-left').slick({
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: true,
  arrows: false,
  autoplay: true

});
  });
    </script><!-- Include all compiled plugins (below), or include individual files as needed --><script src="resources/js/bootstrap.js"></script></body>
</html>