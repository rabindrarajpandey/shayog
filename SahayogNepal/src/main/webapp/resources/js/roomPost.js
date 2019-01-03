(function() {
  var questions = [{
    question: "Type of Room",
    choices: ["Single", "Shared/Paying Guest", "Apartment", "Condo/House", "Office","EventHall"],
    correctAnswer: 1
  }, {
    question: "Rooms Location",
    choices: ["address"],
    correctAnswer: 5
  }, {
    question: "Title for the Post",
    choices: ["Enter a brief summary for you post."],
    correctAnswer: 0
  }, {
    question: "Please Provide your Contact",
    choices: ["Name", "phone", "Email", "Web"],
    correctAnswer: 0
  }, {
    question: "Please Provide a Description",
    choices: ["Please explain additional info for your post."],
    correctAnswer: 0
  },{
    question: "Utilites and Ammenitis",
    choices: ["Water", "Wifi", "Electricity", "Air Conditioning","Washer/Dryer","Microwave"],
    correctAnswer: 6
  },{
    question: "Price",
    choices: ["/month"],
    correctAnswer: 0
  },{
    question: "Is Attach Bath available?",
    choices: ["Yes", "No"],
    correctAnswer: 1
  },{
    question: "Is Smoking available?",
    choices: ["Yes", "No"],
    correctAnswer: 1
  },{
    question: "Is Rooms Furnished?",
    choices: ["Yes", "No"],
    correctAnswer: 1
  },{
    question: "Are pets Allowed",
    choices: ["Yes", "No"],
    correctAnswer: 1
  },{
    question: "Is Attach Bath available",
    choices: ["Yes", "No"],
    correctAnswer: 1
  },{
	    question: "Swimming Pool?",
	    choices: ["Yes", "No"],
	    correctAnswer: 1
  },{
	    question: "GYM?",
	    choices: ["Yes", "No"],
	    correctAnswer: 1
	  },{
    question: "Rooms Available Date",
    choices: ["Calendar"],
    correctAnswer: 8
  },{
    question: "Upload Pictures",
    choices: ["Upload here"],
    correctAnswer: 0
  }];
  
  var questionCounter = 0; //Tracks question number
  var selections = []; //Array containing user choices
  var address =[];//array for address
  var quiz = $('#quiz'); //Quiz div object
  
  // Display initial question
  displayNext();
  
  // Click handler for the 'next' button
  $('#next').on('click', function (e) {
    e.preventDefault();
    
    // Suspend click listener during fade animation
    if(quiz.is(':animated')) {        
      return false;
    }
    choose();
    
    console.log("The value is:");
    console.log(selections[questionCounter]);
    // If no user selection, progress is stopped
    if (isNaN(selections[questionCounter])) {
    console.log("questions" + questionCounter);
      
    switch(questionCounter) {
    		case 1:
    			var a = document.getElementById("street_number").value;
    			var b = document.getElementById("locality").value;
    			var c = document.getElementById("administrative_area_level_1").value;
    			var d = document.getElementById("postal_code").value;
    			var e = document.getElementById("country").value;
    			
    console.log(a+b+c+d);
    				if (a != "" && b != "" && c != "" && d != "" && e != "") {
    						questionCounter++;
    						displayNext();
          
    					}else $("#warning").text('Please Enter Complete Address!');
    		break;

    		case 3:
    			var a = document.getElementById("summary0").value;
    			var b = document.getElementById("summary1").value;
    			var c = document.getElementById("summary2").value;
    			var d = document.getElementById("summary3").value;
				console.log(a+b+c+d);
					if (a != "" && b != "" && c != "") {	
						if(validateEmail(c)){
							questionCounter++;
							displayNext();
					      }else $("#warning").text('please provide valide email!')
						
					}else $("#warning").text('Please Complete form!');
        break;
        
    		case 5:
						questionCounter++;
						displayNext();
        break;
    		
    		default:
    			var x = document.getElementById("summary0").value;
			console.log(x);
				if (x != "") {
					questionCounter++;
					displayNext();
  
				}else $("#warning").text('Please Complete form!');
    }


    } else {
    //	$("#warning").text("Please make a selection!");
    //	console.log("questions" + questionCounter);
      questionCounter++;
      displayNext();
    }
  });
  
  // Click handler for the 'prev' button
  $('#prev').on('click', function (e) {
    e.preventDefault();
    
    if(quiz.is(':animated')) {
      return false;
    }
    choose();
    questionCounter--;
    displayNext();
  });
  
  // Click handler for the 'Start Over' button
  $('#start').on('click', function (e) {
    e.preventDefault();
    
    if(quiz.is(':animated')) {
      return false;
    }
    questionCounter = 0;
    selections = [];
    displayNext();
    $('#start').hide();
  });
  
  // Animates buttons on hover
  $('.button').on('mouseenter', function () {
    $(this).addClass('active');
  });
  $('.button').on('mouseleave', function () {
    $(this).removeClass('active');
  });
  
  // Creates and returns the div that contains the questions and 
  // the answer selections
  function createQuestionElement(index) {
    var qElement = $('<div>', {
      id: 'question'
    });
    
    //var header = $('<h2>Question ' + (index + 1) + ':</h2>');
    //qElement.append(header);
    
    var question = $('<p>').append(questions[index].question);
    qElement.append(question);
    
    var radioButtons = createRadios(index);
    qElement.append(radioButtons);
    
    return qElement;
  }
  
  // Creates a list of the answer choices as radio inputs
  function createRadios(index) {
    var radioList = $('<ul>');
    var item;
    var input = '';
    for (var i = 0; i < questions[index].choices.length; i++) {
    
    	switch(questions[index].correctAnswer) {
		
      

		case 0:
        item = $('<li>');
        input = questions[index].choices[i];
        input += '<input type="input" id="summary'+ i +'" name="answer" value="" />';
        item.append(input);
        radioList.append(item);
      break;
      
      
		case 8:
          item = $('<li>');
          input = questions[index].choices[i];
          input += '<input type="date" id="summary'+ i +'" name="answer" value="" />';
          item.append(input);
          radioList.append(item);
       break;
       
       //
		case 6:
	          item = $('<li>');
	          input = questions[index].choices[i];
	          input += '<input type="checkbox" id="check'+ i +'" name="answer"/>';
	          item.append(input);
	          radioList.append(item);
	       break;

	       
	     //address
		case 5:
        item = $('<li>');
        input='<div id="locationField">'
        input+='<input id="autocomplete" placeholder="Enter your address" name="locationField"'
        input+='onFocus="geolocate()" type="text"></input>'
        input+='</div>'
        input+='<table id="">'
        input+='<tr>'
        //input+='<td class="label">Street address</td>'
        input+='<td class="slimField"><input type="hidden" class="field" id="street_number" name="street"'
        input+='disabled="true"></input></td>'
        input+='<td class="wideField" colspan="2"><hidden class="field" id="route"'
        input+='disabled="true"></hidden></td>'
        input+='</tr>'
        input+='<tr>'
        //input+='<td class="label">City</td>'
        input+='<td class="wideField" colspan="3"><hidden class="field" id="locality" name="city"'
        input+='disabled="true"></hidden></td>'
        input+='</tr>'
        input+='<tr>'
        //input+='<td class="label">State</td>'
        input+='<td class="slimField"><hidden class="field" name="state"'
        input+='id="administrative_area_level_1" disabled="true"></hidden></td>'
        //input+='<td class="label">Zip code</td>'
        input+='<td class="wideField"><hidden class="field" id="postal_code" name="zipCode"'
        input+='disabled="true"></hidden></td>'
        input+='</tr>'
        input+='<tr>'
        //input+='<td class="label">Country</td>'
        input+='<td class="wideField" colspan="3"><hidden class="field" name="country"'
        input+='id="country" disabled="true"></hidden></td>'
        input+='</tr>'
        input+='</table>'
        input+='<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBUJmbixxfHxSFO3k3bbo1T3sOwqTbi_r8&libraries=places&callback=initAutocomplete" async defer></script>'

        item.append(input);
        radioList.append(item);
        
        break;
		default:
		    
	        item = $('<li>');
	        input = '<input type="radio" name="answer" value=' + i + ' />';
	        input += questions[index].choices[i];
	        item.append(input);
	        radioList.append(item);
    	}
    }
    return radioList;
  }
  
  
  // Reads the user selection and pushes the value to an array
  function choose() {
    
    switch(questionCounter) {
	case 1:
		var street = document.getElementById("street_number").value + document.getElementById("route").value;
		var city = document.getElementById("locality").value;
		var state = document.getElementById("administrative_area_level_1").value;
		var zipCode = document.getElementById("postal_code").value;
		var country = document.getElementById("country").value;
		var street_name = document.getElementById("route").value;
		
		
		selections[1] = {street,city,state,zipCode,country};
		console.log(selections[questionCounter]+"has been inserted into the selection array");
		
	break;
	
	case 4:
	case 6:
	case 2:
	case 12:
	case 13:
		
		selections[questionCounter] = document.getElementById("summary0").value;
		console.log(selections[questionCounter]+"has been inserted into the selection array");
	
	break;
	
	case 3:
		var a = document.getElementById("summary0").value;
		var b = document.getElementById("summary1").value;
		var c = document.getElementById("summary2").value;
		var d = document.getElementById("summary3").value;
		selections[3] = {a,b,c,d};
		
		console.log(selections[questionCounter]+"has been inserted into the selection array");
		
break;

	case 5:
		var water = document.getElementById("check0").checked;
		var wifi = document.getElementById("check1").checked;
		var electricity = document.getElementById("check2").checked;
		var ac = document.getElementById("check3").checked;
		var washerDryer = document.getElementById("check4").checked;
		var MicroWave = document.getElementById("check5").checked;
		
		selections[5] = {water, wifi, electricity, ac, washerDryer, MicroWave}
		
		console.log(selections[questionCounter]+"has been inserted into the selection array");
		
break;
	
	default:
		
		selections[questionCounter] = +$('input[name="answer"]:checked').val();
    		console.log(selections[questionCounter]+"has been inserted into the selection array");

  }
    
}
  
  // Displays next requested element
  function displayNext() {
	  $("#warning").text("");
    quiz.fadeOut(function() {
      $('#question').remove();
      
      if(questionCounter < questions.length){
        var nextQuestion = createQuestionElement(questionCounter);
        quiz.append(nextQuestion).fadeIn();
        if (!(isNaN(selections[questionCounter]))) {
          $('input[value='+selections[questionCounter]+']').prop('checked', true);
        }
        
        // Controls display of 'prev' button
        if(questionCounter === 1){
          $('#prev').show();
        } else if(questionCounter === 0){
         
          $('#prev').hide();
          $('#next').show();
          
        }
      }else {
        var scoreElem = displayScore();
        quiz.append(scoreElem).fadeIn();
        $('#next').hide();
        $('#prev').hide();
        $('#start').show();
      }
    });
  }
  
  
  
  // Computes score and returns a paragraph element to be displayed
  function displayScore() {
    var score = $('<p>',{id: 'question'});
    
    var numCorrect = 0;
    for (var i = 0; i < selections.length; i++) {
      if (selections[i] === 0) {
          document.getElementById('username').value="moo"
          document.forms[0].submit()
        numCorrect++;
      }
    }
    
    score.append('You got ' + numCorrect + ' questions out of ' +
                 questions.length + ' right!!!');
    return score;
  }

  function validateEmail(email) {
	  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	  return re.test(email);
	}
  
  

})();