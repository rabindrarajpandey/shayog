<!DOCTYPE html>
<html>
<title>Our Mission</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/mission.css" type="text/css" media="screen" charset="utf-8">

<style>
.mySlides1 {display:none;}
</style>
<body>


</style>
</head>
<body background="images/parallax/parallax0.png">




<!-- Navigation Bar -->
	

<div class="w3-container">
</div>

<div class="w3-content" style="max-width:80%">

	<ul class="navbar-top">
			<div><img src=homepageimages/logo.png></img></div>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/sahayog.html"><strong>Sahayog</strong></a></li>
			<li><a href="#"><strong><span>About Us</span></strong></a></li>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/sahayogStore.html"><strong><span>Sahayog </span>Store</strong></a></li>
			<li><a href="#"><strong><span>Development </span>Blog</strong></a></li>
			<li><a href="#"><span>Our Mission</span></a></li>
		</ul>	
  </div>
  
</div>


<div id="maincontain1">
			

  		

			
<div class="card">
  <div class="type">SahayogNepal Mission</div>
  
  <div class="Description">SahayogNepal.com is a website dedicated to serve Nepali Community in various regions of USA.
  We would like to call out our community to come together and help each other. 
  Let’s go ahead together, and serve our community for addressing all small and big problems of any individual living in our community, City, States and Country by exchanging the services and information among us. 
  </div>

   <div class="Description">As a SahayogNepal team we would like to see growth of both individuals and our community.
   Some small help of your might be a life changing milestone for another individual.
   So, please do not hesitate to offer what you have at a reasonable cost that can help both parties involved.
   As long as it does not require our extensive involvement in the exchanges of service offered through us, we are only willing to provide a central platform for sharing goods and services.
   </div>
   
    <div class="Description">We have a vision for our website to grow in the future and address all the possible problems existing within our community.
	But to begin with we will be offering space for exchanging some of the common services currently desired in our community.
	Services like finding a home for you to stay, jobs for your livelihood and rides for your travel needs and few others.
	These are some of the problems that currently most of the people in our community face every day.
	Students are most likely to have more problems than others, but they are our future and we all need to come together to help them thrive in this foreign nation.
	Also, there are a lot of elderly people and our parents who may need our little help to make their live more comfortable.
	</div>
	
	<div  style="width:900px" style="height: 400px">
  <img class="mySlides1" src="homepageimages/rooms.jpg" style="width:100%" >
  <img class="mySlides1" src="homepageimages/rides.jpg" style="width:100%">
  <img class="mySlides1" src="homepageimages/jobs.jpg" style="width:100%">
</div>
	
	
	<div class="Description">Yet another purpose of our website is to build the communication channel between the individuals in our community.
	This is vital for our community to get ahead.
	Our needs are growing day by day, so is our population here in United Sates. We need to build a strong community for us to secure our legal rights and opportunities here.
	We can make our voice heard only we all come together and speak for each other.
	This is a land of opportunity for any hard working and dedicated individual and we can pave our path to success by helping each other.
	</div>
	
	<div class="Description">As of today, quite a few number of business are being built by our people here in the states, also these entrepreneurs and businesses are trying to reach out to our community.
	SahayogNepal can certainly act as a network for your communication.
	These business and organizations are growing in number day by day but might be currently dependent on resources outside our community.
	If we can utilize our own resources and goods, it will help all of us.
	These businesses can offer better jobs and other opportunities that are distant from our reach otherwise.
	Also, business can also find better personal for our own community, who are more reliable, confident and enthusiastic than an outsider.
	</div>
	
	<div class="Description">Building a stronger community is not only a great achievement for our community here but can be very fruitful in creating resources to help our mother Nation in the times of need, and it the course of building our country.
	Development of our Nation is also our responsibility, as we are not just an individual but we have families and problems in their life are part of our life. SahayogNepal has a vision of reaching out to our mother Nation and promote the standard of living in our home as well.
	</div>


</div>




<script>

var myIndex = 0;
carousel();

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}


function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides1");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</div>
</body>
</html> 