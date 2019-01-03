<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page session="false"%>
<!DOCTYPE html>

<html>

<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="resources/homepageimages/logo.png" type="image/png">
		<title>Sahayog</title>
		<link rel="stylesheet" href="resources/css/sahayoghome.css" type="text/css" media="screen" charset="utf-8">
	
	<!-- pop up sign up -->
	<script type="text/javascript" src="resources/js/jquery-1.11.0.min.js"></script>
	
<script type="text/javascript" src="resources/js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="resources/css/style-popup.css" />
	

	
	<script type="text/javascript" src="resources/css/sahayog.js.download"></script>
	
	
<!-- Google Sign In Meta -->
	<meta name="google-signin-scope" content="profile email">
	<meta name="google-signin-client_id" content="987835049747-l1rr6n8k0kr0937ec1eiqj0uua5hh29e.apps.googleusercontent.com">
   <script src="https://apis.google.com/js/platform.js" async defer></script>
		



	</head>

	<body>

			
						
	<!-- Google Sign In div -->
	<!-- <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" type="submit" align="Right">Google Sign In
    <script>
	
	gapi.load('auth2', function(){
	gapi.auth2.init()
	});
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
      };
    </script>
	
	<a href="#" onclick="signOut();">Google Sign out</a></div>
<script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
  }
</script> -->
	
<!-- Google Sign In -->

	
	<!-- Navigation Bar -->
	
				<ul class="navbar-top">
			<li><a href="#"><strong>Sahayog</strong></a></li>
			<li><a href="#"><strong><span>About Us</span></strong></a></li>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/sahayogStore.html"><strong><span>Sahayog </span>Store</strong></a></li>
			<li><a href="#"><strong><span>Development </span>Blog</strong></a></li>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/Our%20Mission.html"><strong><span>Our Mission</span><strong></a></li>
		</ul>		

		<div>
		
						<!-- pop up -->
	
<div class="container">
	<a id="modal_trigger" href="#modal" class="btn">Login</a>

	<div id="modal" class="popupContainer" style="display:none;">
		<header class="popupHeader">
			<span class="header_title">Login</span>
			<span class="modal_close"><i class="fa fa-times"></i></span>
		</header>
		
		<section class="popupBody">
			<!-- Social Login -->
			<div class="social_login">
				<div class="">
					<a href="#" class="social_box fb">
						<span class="icon"><i class="fa fa-facebook"></i></span>
						<span class="icon_title">Connect with Facebook</span>
						
					</a>

					<a href="#" class="social_box google">
						<span class="icon"><i class="fa fa-google-plus"></i></span>
						<span class="icon_title">Connect with Google</span>
					</a>
				</div>

				<div class="centeredText">
					<span>Or use your Email address</span>
				</div>

				<div class="action_btns">
					<div class="one_half"><a href="#" id="login_form" class="btn">Login</a></div>
					<div class="one_half last"><a href="#" id="register_form" class="btn">Sign up</a></div>
				</div>
			</div>

			<!-- Username & Password Login form -->
			<div class="user_login">

					<form:form NAME="form2" method="POST" commandName="new_customer" action="success">
						
							<Label> ${msg} </Label>
							<Label> Email </Label>
				<div class="input">
							<form:input path="email" placeholder="email" />
								</div>
				
				<div class="input">
						<Label> Password </Label>
							<form:password path="password" placeholder="password"/>
								
								
				</div>
						<label>
						<a href="#">Forgot Password?</a></label>
					
				
				
					<div class="checkbox">
						<input id="remember" type="checkbox" />
						<label>Remember me on this computer</label>
					</div>
						
						<div class="input">
						<div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
						
						
						<input  type="submit" name="Login" value="Login"/></div>
				
						
						
					</form:form>


			</div>

			<!-- Register Form -->
			<div class="user_register" >
				<form:form NAME="form1" method="POST" commandName="new_customer" action="welcome">

			<table>
				<tr>
				
					<td><form:hidden path="customerId"  placeholder="userId" /></td>
					<td><form:errors path="customerId" cssClass="error"></form:errors></td>
					
					<td><form:hidden path="customer_rating"  placeholder="customer_rating"/></td>
					<td><form:errors path="customer_rating" cssClass="error"></form:errors></td>
				</tr>
				<tr>
				
				<td>First Name</td>
					<td><form:input path="firstName" placeholder="first Name" /></td>
					<td><form:errors path="firstName" class="error" cssClass="error"></form:errors></td>

				
					<td>Last Name</td>
					<td><form:input path="lastName" placeholder="last Name"/></td>
					<td><form:errors path="lastName" cssClass="error"></form:errors></td>

				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email" placeholder="email"/></td>
					<td><form:errors path="email" cssClass="error"></form:errors></td>
					
					
					


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
					<td>Password</td>
					<td><form:password path="password" placeholder="password"/></td>
					<td><form:errors path="password" cssClass="error"></form:errors></td>
				
					
				</tr>
				
				
				
				

			</table>
			
			<div class="checkbox">
						<input id="send_updates" type="checkbox" />
						<label for="send_updates">Send me occasional email updates</label>
					</div>

					<div class="action_btns">
						<div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
						
						<div class=""><input class="" type="submit" name="Register" value="Register" /></div>
					</div>
					
					<label>${formError }</label>
			
		</form:form>
			
			
		

			</div>
		</section>
	</div>
</div>



<script type="text/javascript">

	$("#modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });

	$(function(){
		// Calling Login Form
		$("#login_form").click(function(){
			$(".social_login").hide();
			$(".user_login").show();
			return false;
		});

		// Calling Register Form
		$("#register_form").click(function(){
			$(".social_login").hide();
			$(".user_register").show();
			$(".header_title").text('Register');
			return false;
		});

		// Going back to Social Forms
		$(".back_btn").click(function(){
			$(".user_login").hide();
			$(".user_register").hide();
			$(".social_login").show();
			$(".header_title").text('Login');
			return false;
		});
		

	})
	


</script>
<input type="hidden" id="valid" value="${valid}"/>
<script>
var valid=document.getElementById('valid').value;

if (valid=="register"){
	
	eventFire(document.querySelector('#modal_trigger'),'click');
    $(".social_login").hide();
	$(".user_register").show();
	$(".header_title").text('Register');}

if (valid=="login"){
	
	eventFire(document.querySelector('#modal_trigger'),'click');
	$(".social_login").hide();
	$(".user_login").show();}
    
    
    function eventFire(el, etype){
    	  if (el.fireEvent) {
    	    (el.fireEvent('on' + etype));
    	  } else {
    	    var evObj = document.createEvent('Events');
    	    evObj.initEvent(etype, true, false);
    	    el.dispatchEvent(evObj);
    	  }
    	}

</script>


	
	<!-- pop up -->
		
<div class="keyart" id="nonparallax">
			</div>
			<div  class="keyart" id="parallax">
				<div class="keyart_layer parallax" id="keyart-0" data-speed="3"></div>		<!-- 00.0 -->
				<div class="keyart_layer parallax" id="keyart-1" data-speed="8"></div>	<!-- 12.5 -->
				<div class="keyart_layer parallax" id="keyart-2" data-speed="52"></div>		<!-- 25.0 -->
				<div class="keyart_layer parallax" id="keyart-3" data-speed="8"></div>	<!-- 37.5 -->
				<div class="keyart_layer parallax" id="keyart-4" data-speed="10"></div>		<!-- 50.0 -->
				<div  class="keyart_layer parallax" id="keyart-5" data-speed="35"></div>	<!-- 62.5 -->
				<div class="keyart_layer parallax" id="keyart-6" data-speed="25"></div>		<!-- 75.0 -->
				
				<div  class="keyart_layer parallax" id="keyart-7" data-speed="35"></div>		<!-- 87.5 -->
				<div class="keyart_layer" id="keyart-8" data-speed="2"></div>		<!-- 100. -->
			</div>

			
			

			
			<div id="maincontain">
			
			
			

			
			<div>
  <h4>Post or Look for Jobs, Rooms, Rides and other Services. The number of vistors rt now are ${count}</h4>
  

  
</div>
			
<div class="selection">

<select class="select">
<option>I am Looking for</option>
<option>I Have</option>
</select>

<select class="select1">
<option>Events</option>
<option>Rental Rooms/Apt/House</option>
<option>Jobs</option>
<option>Rides</option>
<option>Air Tickets</option>
<option>Other Services</option>
</select>

<select class="select2">
<option>Dallas/Fortworth</option>
<option>NewYork</option>
<option>California</option>
<option>Chicago</option>
<option>Virginia</option>
<option>Houston</option>
<option>Other Cities</option>
</select>
<!-- <input class="input" type="text" placeholder="Search..">
<input class="city" type="text"  Placeholder="City, Zipcode"> -->



<button class="button" type="submit"></button><a href="<c:url value="/room"/>"><img src="resources/homepageimages/Search.ico" height=45px width=45px></a>
</div>
			
<div class="responsive">
  <div class="img">
    <a target="_blank" href="resources/homepageimages/services.jpg">
      <img src="resources/homepageimages/services.jpg" alt="Trolltunga Norway" width="400" height="250">
    </a>
    <div class="desc">Sahayog Services</div>
  </div>
</div>


<div class="responsive">
  <div class="img">
    <a target="_blank" href="resources/homepageimages/rides.jpg">
      <img src="resources/homepageimages/rides.jpg" alt="Forest" width="300" height="150">
    </a>
    <div class="desc">Sahayog Rides</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a target="_blank" href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/SahayogRooms.html">
      <img src="resources/homepageimages/rooms.jpg" alt="Northern Lights" width="300" height="150">
    </a>
    <div class="desc">Sahayog Rooms</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a target="_blank" href="homepageimages/jobs.jpg">
      <img src="resources/homepageimages/jobs.jpg" alt="Mountains" width="300" height="150">
    </a>
    <div class="desc">Sahayog Jobs</div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a target="_blank" href="homepageimages/event.jpg">
      <img src="resources/homepageimages/event.jpg" alt="Mountains" width="300" height="150">
    </a>
    <div class="desc">Sahayog Events</div>
  </div>
</div>

<div class="clearfix"></div>

</div>			
		

</body>

</html>

