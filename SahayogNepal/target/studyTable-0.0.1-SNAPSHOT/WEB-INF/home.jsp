<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page session="false"%>
<html>




<head>
<title>StudyTable</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="IE=edge" http-equiv="X-UA-Compatible" />
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>Classroom</title>
<!-- <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700,500,900,300italic,300' rel='stylesheet' type='text/css'> -->
<!-- Bootstrap -->
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/slick.css" rel="stylesheet" type="text/css" />
<link href="resources/css/slick-theme.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,300,700,900"
	rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Pacifico"
	rel="stylesheet" type="text/css" />
<link href="resources/fonts/fa/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="row wrapper">
		<div class="header">
			<div class="col-md-4 col-sm-6 col-xs-6 header-left">
				<img alt="logo" class="img-responsive"
					src="resources/images/logo.png" />
			</div>
			<!-- header-left -->

			<div class="col-md-3 col-md-offset-5 col-sm-6 col-xs-6 header-right">
				<div class="social-media"></div>
			</div>
			<!-- header-left -->
		</div>
		<!--end of header  -->

		<div class="clearfix"></div>

		<div class="row rum-form">
			<div class="class-desc">
				<p>
					Welcome to <b>StudyTable</b>
				</p>
			</div>
			<!-- class-desc -->

			<div class="col-md-4 col-sm-5 col-xs-12 rum-form-left">
				<div class="rum-left">
					<div class="run-left-img">
						<img alt="sharesc" class="img-responsive"
							src="resources/images/SHRESC.png" />
					</div>

					<div class="run-left-img">
						<img alt="register2" class="img-responsive"
							src="resources/images/register2.png" />
					</div>

					<div class="run-left-img">
						<img alt="signup" class="img-responsive"
							src="resources/images/signup.jpg" />
					</div>
				</div>
				<!-- rum-left -->
			</div>
			<!-- rum-form-left -->

			<div class="col-md-8 col-sm-7 col-xs-12 rum-form-right">
				<div class="rum-right">
					<h3>Sign In</h3>

					<p>Fill in the form below to get instant access.</p>

					<form:form method="POST" commandName="student" action="table">
						<div class="form-group">
							<form:input  path="studentId" class="form-control" id="exampleInputEmail1"
								placeholder="Student Id" type="number"/>
							<form:errors path="studentId" cssClass="error"></form:errors>	
						</div>

						<div class="form-group">
							<form:input path="password" class="form-control" id="exampleInputEmail1"
								placeholder="password" type="password" />
								<form:errors path="password" cssClass="error"></form:errors>
								<p>${msg} </p>
					
						</div>
						<input class="btn btn-default" type="submit" value="Sign In!" />
					</form:form>
				<div>
					<p>
						<a href="<c:url value="/instructorLogin"/>">Instructor Login</a> &nbsp;<a href="<c:url value="/signUp"/>"> Sign Up</a>&nbsp;
						<a href="#">Forgot Password?</a>
					</p>
					
				</div>
				<!-- rum-right -->
			</div>
			<!-- rum-form-right -->
		</div>
		<!-- rum-form -->
	</div>
	<!-- wrapper -->
	<!-- jQuery -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/js-migrade.js"></script>
	<script>
		$(document).ready(function() {
			$('.rum-left').slick({
				infinite : true,
				speed : 300,
				slidesToShow : 1,
				slidesToScroll : 1,
				autoplay : true,
				arrows : false,
				autoplay : true

			});
		});
	</script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resources/js/bootstrap.js"></script>

	<div class="ex1"
		style="color: windowtext; padding: %; text-align: center;">
		<marquee behavior="scroll" direction="left">The time on the
			server is ${serverTime}.</marquee>
	</div>






</body>


</html>
