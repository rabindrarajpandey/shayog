<!DOCTYPE html>
<html lang="en" >

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/sahayoghome.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="resources/css/otherpages.css" type="text/css" media="screen" charset="utf-8">

<style>
.mySlides1 {display:none;}
</style>
<body>


</style>
</head>
	
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans"/>
			

		 
  
     <link rel="stylesheet" href="resources/css/style.css">
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    <style>
      #locationField, #controls {
        position: relative;
        width: 480px;
      }
      #autocomplete {
        position: relative;
        top: 0px;
        left: 0px;
        width: 60%;
      }
      .label {
        text-align: right;
        font-weight: bold;
        width: 100px;
        color: #303030;
      }
      #address {
        border: 1px solid #000090;
        background-color: #f0f0ff;
        width: 480px;
        padding-right: 2px;
      }
      #address td {
        font-size: 10pt;
      }
      .field {
        width: 99%;
      }
      .slimField {
        width: 80px;
      }
      .wideField {
        width: 200px;
      }
      #locationField {
        height: 20px;
        margin-bottom: 2px;
      }
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


  <!-- <img class="mySlides" src="resources/homepageimages/nature.jpg" style="width:100%">
  <img class="mySlides" src="resources/homepageimages/colors.jpg" style="width:100%">
  <img class="mySlides" src="resources/homepageimages/prayer.jpg" style="width:100%">
  <div class="w3-section w3-large w3-text-white" style="width:100%">
    <span class="w3-badge  w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge  w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge  w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span> -->
  </div>
  
</div>


	
		<div id='container'>
			<div id='title'>
				<h1>Post Rooms: SahayogNepal</h1>
				<p id='warning'></p>
			</div>
   			<br/>
  			<div id='quiz'></div>
  		
    		<div class='button' id='next'><a href='#'>Next</a></div>
    		<div class='button' id='prev'><a href='#'>Prev</a></div>
    		<div class='button' id='start'> <a href='#'>Start Over</a></div>
    		<!-- <button class='' id='next'>Next</a></button>
    		<button class='' id='prev'>Prev</a></button>
    		<button class='' id='start'> Start Over</a></button> -->
    		
    	</div>

		<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
		<script type="text/javascript" src='questions.json'></script>
		<script type='text/javascript' src='jsquiz.js'></script>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="resources/js/roomPost.js"></script>

<script>
      // This example displays an address form, using the autocomplete feature
      // of the Google Places API to help users fill in the information.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      var placeSearch, autocomplete;
      var componentForm = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        administrative_area_level_1: 'short_name',
        country: 'long_name',
        postal_code: 'short_name'
      };

      function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
            {types: ['geocode']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);
      }

      function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();

        for (var component in componentForm) {
          document.getElementById(component).value = '';
          document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
          var addressType = place.address_components[i].types[0];
          if (componentForm[addressType]) {
            var val = place.address_components[i][componentForm[addressType]];
            document.getElementById(addressType).value = val;
          }
        }
      }

      // Bias the autocomplete object to the user's geographical location,
      // as supplied by the browser's 'navigator.geolocation' object.
      function geolocate() {
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var geolocation = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
            var circle = new google.maps.Circle({
              center: geolocation,
              radius: position.coords.accuracy
            });
            autocomplete.setBounds(circle.getBounds());
          });
        }
      }
    </script>
    


  </body>
</html>


