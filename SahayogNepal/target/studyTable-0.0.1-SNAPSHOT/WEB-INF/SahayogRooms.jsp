<!DOCTYPE html>
<html>
<title>Sahayog Rooms</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/sahayoghome.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="resources/css/otherpages.css" type="text/css" media="screen" charset="utf-8">

<style>
.mySlides1 {display:none;}
</style>
<body>


</style>
</head>
<body background="resources/images/parallax/parallax0.png">


<!-- Navigation Bar -->
	

<div class="w3-container">
</div>

<div class="w3-content" style="max-width:80%">

	<ul class="navbar-top">
			<div><img src=resources/homepageimages/logo.png></img></div>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/sahayog.html"><strong>Sahayog</strong></a></li>
			<li><a href="#"><strong><span>About Us</span></strong></a></li>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/sahayogStore.html"><strong><span>Sahayog </span>Store</strong></a></li>
			<li><a href="#"><strong><span>Development </span>Blog</strong></a></li>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/Our%20Mission.html"><span>Our Mission</span></a></li>
		</ul>	


  <img class="mySlides" src="resources/homepageimages/nature.jpg" style="width:100%">
  <img class="mySlides" src="resources/homepageimages/colors.jpg" style="width:100%">
  <img class="mySlides" src="resources/homepageimages/prayer.jpg" style="width:100%">
  <div class="w3-section w3-large w3-text-white" style="width:100%">
    <span class="w3-badge  w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge  w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge  w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
  
</div>


<div id="maincontain1">
			


 <div class="typeSelect">
    <select class="select">
      <option>Single Bed Single Bath
      </option>
  <option>Single Bed Double Bath
      </option>
      <option>Double Bed Single Bath
      </option>
      <option>Double Bed Double Bath
      </option>
    </select>
    
    <select class="select">
      <option>Agent
      </option>
      <option>Private
      </option>
    </select>
    
    <select class="select">
      <option>Price High to Low
      </option>
  <option>Price Low to High
      </option>
      <option>Latest Posts
      </option>
      <option>Featured
      </option>
    </select>
    
    <select class="select">
      <option>Texas
      </option>
  <option>All
      </option></select>
  </div>
  		

			
<div class="card">
  <div class="type">Single Bedroom apartment.</div>
  <div class="Description">I have a single bedroom that can accomodate up to 2 people, available to move in by september 23rd.</div>

<div  style="width:400px" style="height: 400px">
  <img class="mySlides1" src="resources/homepageimages/rooms.jpg" style="width:100%" >
  <img class="mySlides1" src="resources/homepageimages/rides.jpg" style="width:100%">
  <img class="mySlides1" src="resources/homepageimages/jobs.jpg" style="width:100%">
</div>
  <div class="contact"><span>Name: <strong>Rabin</strong></span></div>
  <div class="contact"><span>Email: <strong>rrj.pandey@gmail.com</strong></span></div>
  <div class="contact"><span>Phone: <strong><span>(</span>817<span>) </span>271<span>-</span>3281</strong></span></div>
  
</div>

<div class="card">
  <div class="type">Double Bedroom apartment.</div>
  <div class="Description">I have a single bedroom that can accomodate up to 2 people, available to move in by september 23rd.</div>
  
  <div class="responsive1" style="width:400px" style="height: 400px">
  <div><img class="my" src="resources/homepageimages/rooms.jpg" width="400" height=auto >
  </div>
  </div>
  <div class="responsive1" style="width:400px" style="height: 400px">
  <div><img class="my" src="resources/homepageimages/rides.jpg" width="400" height=auto>
  </div>
  </div>
  <div class="contact"><span>Name: <strong>Nikunj</strong></span></div>
  <div class="contact"><span>Email: <strong>nikunj@gmail.com</strong></span></div>
  <div class="contact"><span>Phone: <strong><span>(</span>817<span>) </span>271<span>-</span>3281</strong></span></div>
  
</div>

<div class="card">
  <div class="type">Two Bed Two Bath apartment.</div>
  <div class="Description">I have a single bedroom that can accomodate up to 2 people, available to move in by september 23rd.</div>
    
  <div class="responsive1" style="width:400px" style="height: 400px">
  <div><img class="my" src="resources/homepageimages/rooms.jpg" width="400" height=auto >
  </div>
  </div>
  <div class="responsive1" style="width:400px" style="height: 400px">
  <div><img class="my" src="resources/homepageimages/rides.jpg" width="400" height=auto>
  </div>
  </div>
  <div class="contact"><span>Name: <strong>Jeena</strong></span></div>
  <div class="contact"><span>Email: <strong>jeena@gmail.com</strong></span></div>
  <div class="contact"><span>Phone: <strong><span>(</span>817<span>) </span>271<span>-</span>3281</strong></span></div>
  



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