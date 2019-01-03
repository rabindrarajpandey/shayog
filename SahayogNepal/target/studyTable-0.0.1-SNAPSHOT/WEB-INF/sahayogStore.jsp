
<!DOCTYPE html>
<html>
<head>
<title>Sahayog Store</title>

<link rel="stylesheet" href="./css/sahayoghome.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="./css/otherpages.css" type="text/css" media="screen" charset="utf-8">

</head>
<body background="./images/parallax/parallax0.png"> 
<!--header-->	

<div class="w3-content" style="max-width:80%">

	<ul class="navbar-top">
			<div><img src=./homepageimages/logo.png></img></div>
			<li><a href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/sahayog.html"><strong>Sahayog</strong></a></li>
			<li><a href="#"><strong><span>About Us</span></strong></a></li>
			<li><a href="#"><strong><span>Sahayog </span>Store</strong></a></li>
			<li><a href="#"><strong><span>Development </span>Blog</strong></a></li>
			<li><a href="#"><span>Our Mission</span></a></li>
		</ul>	
			

	</div>
	<div id="maincontain1">
	<div class="card">
  <div class="type">
   
		<ul class="navbar">
			<li><a href="#"><strong>Clothes</strong></a></li>
			<li><a href="#"><strong><span>Electronic Goods</span></strong></a></li>
			<li><a href="#"><strong><span>Jewleries </span></strong></a></li>
			<li><a href="#"><strong><span>Others</span></strong></a></li>
			
		</ul>
		
		</div>

  <div class="img">
    <a target="_blank" href="homepageimages/services.jpg">
      <img src="homepageimages/services.jpg" alt="Trolltunga Norway" width="400" height="250">
    </a>
    <div class="desc">Sahayog Services</div>
  </div>




  <div class="img">
    <a target="_blank" href="homepageimages/rides.jpg">
      <img src="homepageimages/rides.jpg" alt="Forest" width="400" height="200">
    </a>
    <div class="desc">Sahayog Rides</div>
  </div>



  <div class="img">
    <a target="_blank" href="file:///C:/Users/rawbean/Desktop/Project%20Sahayog.com/sahayog.com_home/SahayogRooms.html">
      <img src="homepageimages/rooms.jpg" alt="Northern Lights" width="400" height="200">
    </a>
    <div class="desc">Sahayog Rooms</div>
  </div>

		
		
</div>
</div>






<div class="clearfix"></div>



<script>
var myIndex = 0;
carousel();
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
</body>
</html>