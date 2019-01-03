<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
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
                      </div>
                      <div class="class-off hvr-shrink">
                          <a href="<c:url value="/"/>"><img src="resources/images/off.png" alt="off-button"></a>
                      </div>
                </div><!-- top-head-right -->
            </div><!-- head-class -->

  					

            <div class="class-body">
            
                <div class="col-md-9 col-sm-8 col-xs-12 body-left"><h4 style="color:#008fbf">Conference Room List</h4>
                      <div class="body-slider">
       
               
                </div><!-- body-left -->
       				 <div class="list-user">
                         <c:forEach var="table" items="${tableList}">
                         
                        <form:form method="POST" commandName="studyTable" action="joinTable">
						<div class="form-group">
							<form:input  path="studentId" class="form-control" id="exampleInputEmail1"
								placeholder="Student Id" type="hidden" value="${table.studentId}"/>
							<form:input  path="course" class="form-control" id="exampleInputEmail1"
								placeholder="course" type="hidden" value="${table.course}"/>	
								<form:input  path="userCount" class="form-control" id="exampleInputEmail1"
								placeholder="userCount" type="hidden" value="${table.userCount}"/>
								<form:input  path="tableName" class="form-control" id="exampleInputEmail1"
								placeholder="tableName" type="hidden" value="${table.tableName}"/>
						<input class="btn btn-default:hover" type="submit" value= "  ${table.tableName} ${table.studentId}"/></div>
					</form:form>
                       
                      
                        
                          </c:forEach> </div>

                        <!-- list-user -->
                  
                    
                    <div class="c">
                    
                <form:form method="POST" commandName="student" action="createTable">
						<div class="form-group">
							<form:input  path="studentId" class="form-control" id="exampleInputEmail1"
								placeholder="Student Id" type="hidden"/>
						</div>
						<input class="btn btn-default:hover" type="submit" value="Create Room" />
					</form:form>
					
					</div>
 <div class="con-three-detail"><p style="color:red">${msg}</p></div>
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
    </script>



         <script>

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