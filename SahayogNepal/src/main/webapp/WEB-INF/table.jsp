<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <style>
			#videoWrap{
				//display: none;

			}
			#localVideo{

				//float: left;
				border: 1px #000 solid;
				height:200px;
				width:200px;
				overflow: scroll;

			}
			#remoteVideo1{
				
				//float: left;
				border: 1px #000 solid;
				height:200px;
				width:200px;

			}
			#remoteVideo2{
				
				//float: left;
				border: 1px #000 solid;
				height:200px;
				width:200px;

			}
			#remoteVideo3{
				
				//float: right;
				border: 1px #000 solid;
				height:200px;
				width:200px;

			}
			
			#rooms{
				float: right;
				height: 300px;
				overflow: scroll;
			}
			#wrapRoom{
				float: right;
				display: none;
			}
			#wrapUser{
				float: left;
				
			}
			#text{
				float:left;
			}
		</style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>StudyTable</title>
<!-- <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700,500,900,300italic,300' rel='stylesheet' type='text/css'> -->
    <!-- Bootstrap -->
    <link type="text/css" href="resources/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="resources/css/style-class.css" rel="stylesheet">
	 

     <link type="text/css" href="resources/css/slick.css" rel="stylesheet">
    <link type="text/css" href="resources/css/slick-theme.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
	   
	 <link rel="stylesheet" type="text/css" href="resources/fonts/fa/css/font-awesome.min.css" />  
	 	   
  </head>
  <body>
  

        <div class="row wrap-class">
            <div class="row head-class">
                <div class="col-md-4 col-sm-6 col-xs-12 top-head-left">
                      <a href="#"><img src="resources/images/class-logo.png" alt="logo" class="img-responsive"></a>
                </div><!-- top-head-left -->
                <div class="col-md-3 col-md-offset-5 col-sm-6 col-xs-12 top-head-right">
                      <div class="user-img">
                          <img src="resources/images/user.png" alt="user">
                      <form:form method="POST" commandName="student" action="/logout">
							<form:input  path="studentId" class="form-control" id="exampleInputEmail1"
								placeholder="Student Id" type="hidden"/>
						<input type="image" src="resources/images/off.png" alt="Submit"/> 
					</form:form></div>
                </div><!-- top-head-right -->
            </div><!-- head-class -->

            <div class="class-body">
                <div class="col-md-9 col-sm-8 col-xs-12 body-left">
                      <div class="body-slider">
                    
                  
                      
      

		<div id = "wrapRoom">
			<p>Please enter a room Id</p>
			<form id="roomForm">
				
				<input type ="hidden" id = "roomId" value = "${room}">
				
			</form>
		</div>
		<div id = "wrapUser">
			<form id="userForm">
				
				<input type ="hidden" id = "userId" value = "${user}">
				
			</form>
		</div>
			<p id = "rooms"></p>
			<p id = "roomError"></p>
			<p id = "users"></p>
			<p id = "usrError"></p>
		</div>

		<div id = "videoWrap">
			
			<video id = "localVideo"></video>
			<video id= "remoteVideo1"></video><br>
			<video id = "remoteVideo2"></video>
			<video id = "remoteVideo3"></video><br>
		
			<form id="text"></form>

			<p id = "showRooms"></p>
		</div>

		
		<script src="https://code.jquery.com/jquery-latest.min.js"></script>

		<script src="resources/js/socket.io.js"></script>
		
		<script src="resources/js/webrtc.js"></script>

                         
                      
                      
                      
                      
                         <!--<img src="images/body-slider.png" alt="body-slider" class="img-responsive">-->
                      </div><!-- body-slider -->

                      <div class="row body-content">
                          <div class="content-one">
                              <div class="share-note">
                                  <h3>ROOM ID : ${room}</h3>
                                  <h3>User ID : ${user}</h3>
                                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="enter your friends email">
                              </div><!-- share-note -->

                              <div class="send-friend">
                                <h3>Send to</h3>
                                <div class="row send-friend-level">
                                
                         
                                   
                                   <label for="default1" class="btn btn-default"><p>Nikunj Chapagain</p>
                                   <input type="checkbox" id="default1" class="badgebox"><span class="badge">&check;</span></label>

                                   <label for="default2" class="btn btn-default"><p>Pradip Adhikari</p>
                                   <input type="checkbox" id="default2" class="badgebox"><span class="badge">&check;</span></label>

                                   <label for="default3" class="btn btn-default"><p>Sureeti Shrestha</p>
                                   <input type="checkbox" id="default3" class="badgebox"><span class="badge">&check;</span></label>

                                   <label for="default4" class="btn btn-default"><p>Rubina Masal</p>
                                   <input type="checkbox" id="default4" class="badgebox"><span class="badge">&check;</span></label>

                                </div>
                              </div><!-- send-friend -->
                          </div><!-- content-one -->

                          <div class="content-two">
                              <div class="con-slider">
                                    <div class="top-div-slider">
                                         <div class="top-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>
                                          <div class="top-slide-img">
                                              <img src="images/but-slider1.jpg">
                                          </div>

                                          <div class="top-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>

                                          <div class="top-slide-img">
                                              <img src="images/but-slider1.jpg">
                                          </div>

                                           <div class="top-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>
                                    </div>
                                    <div class="but-div-slider">
                                          <div class="but-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>
                                          <div class="but-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>

                                          <div class="but-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>

                                          <div class="but-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>

                                          <div class="but-slide-img">
                                              <img src="images/but-slider.jpg">
                                          </div>
                                         
                                    </div>
                              </div><!-- con-slider -->
                          </div><!-- content-one -->
                          <div class="content-three">
                             <h3>Schedules</h3>
                                <div class="con-three-detail">
                                    <div class="con-three-one">
                                          <div class="con-three-four">
                                              <p>CSCI 440</p>
                                                  <h2>Application Development</h2>
                                          </div><!-- con-three-four -->
                                          <div class="con-three-five">
                                                <p>CSCI 359</p>
                                                  <h2>System Analysis & Design</h2>
                                          </div><!-- con-three-five -->
                                    </div><!-- con-three-one -->

                                    <div class="con-three-two">
                                          <p>CSCI 454</p>
                                                  <h2>Network Security</h2>
                                    </div><!-- con-three-two -->

                                    <div class="con-three-three">
                                         <div class="con-three-seven">
                                               <p>CSCI 428</h2>
                                                  <h2>OOP</h2>
                                         </div><!-- con-three-six -->
                                          <div class="con-three-eight">
                                                   <p>CSCI 380</p>
                                                        <h2>Web Development</h2>
                                          </div><!-- con-three-eight -->
                                    </div><!-- con-three-three -->

                                </div><!-- con-three-detail -->
                          </div><!-- content-one -->
                      </div>

                </div><!-- body-left -->
                
                <div class="col-md-3 col-sm-4 col-xs-12 body-right">
                             <div class="list-user">
                         <c:forEach var="table" items="${tableList}">
                         <table>
                         <tr>
                          <td> <a href="#"><li><div class="cir-left"></div><p>${table.tableName} ${table.course}</p><div class="list-font">
                           <i class="fa  fa-comment-o"></i><i class="fa  fa-ellipsis-h"></i></div></li></a>
                        </td>
                        <td>
                        </td>
                         </tr>
                          </table>
                          </c:forEach> 

                        </div>


                        </div><!-- list-user -->
                    </div><!-- left-list -->

                    <div class="left-search">
                          <div id="custom-search-input">
                            <div class="input-group">
                                <input type="text" class="  search-query form-control" placeholder="Search User" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>

                </div><!-- body-right -->
            </div><!-- class-body -->
            <div class="clearfix"></div>

            <div class="footer">
                  <p>© Copyright - StudyTable</p>
            </div><!-- footer -->

        </div><!-- wrap-class -->
        
  
  
     
    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/slick.min.js"></script>
    <script src="resources/js/js-migrade.js"></script>



        <script>

    $(document).ready(function(){
     $('.top-div-slider').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  fade: true,
  asNavFor: '.but-div-slider'
});

$('.but-div-slider').slick({
  slidesToShow: 4,
  slidesToScroll: 1,
  arrows: true,
  asNavFor: '.top-div-slider',
  focusOnSelect: true
  
});
    
  });
    
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
    </script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
  </body>
</html>