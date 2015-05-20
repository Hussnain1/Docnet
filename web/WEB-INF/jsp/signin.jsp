
     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en-US">
   <head>
       
      <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>DOCNET</title>
      <!-- Bootstrap core CSS -->
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet"/>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,700,400,300' rel='stylesheet' type='text/css'/>
      
    <link href="<c:url value="/resource/css/bootstrap.css" />" rel="stylesheet" type="text/css" />
      
      <!-- Bootstrap theme -->
      <link href="<c:url value="/resource/css/bootstrap-theme.css" />" rel="stylesheet" type="text/css" />
      <!-- Custom styles for this template -->
      <link href="<c:url value="/resource/css/jquery-ui.css" />" rel="stylesheet" />
      <link href="<c:url value="/resource/css/selectbox.css" />" rel="stylesheet" type="text/css" />
      <link href="<c:url value="/resource/css/font-awesome.min.css" />" rel="stylesheet">
      <link href="<c:url value="/resource/css/melon.datepicker.css" />" rel="stylesheet" type="text/css"/>
      <link href="<c:url value="/resource/css/selectbox.css" />" rel="stylesheet"/>
      <link href="<c:url value="/resource/css/star-rating.css" />" rel="stylesheet" media="all" type="text/css"/>
      <link href="<c:url value="/resource/css/theme.css" />" rel="stylesheet" type="text/css">
          <link href="<c:url value="/resource/css/owl.carousel.css" />" rel="stylesheet" type="text/css">
	
      <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --><!--[if lt IE 9]><script type="text/javascript" src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script type="text/javascript" src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
   </head>
  <body>

    <div class="container">

      
         <form:form method="POST" commandName="verify" class="form-signin">


          <div class="form-group">
          <label for="CNIC" class="sr-only">CNIC</label>
          <spring:bind path ="l3">
          <input type="text" id="inputEmail" class="form-control" placeholder="CNIC"  name ="${status.expression}" value ="${status.value}" required autofocus >
          </spring:bind>
          </div>

          <div class="form-group">
          <label for="Password" class="sr-only">PASSWORD</label>
              <spring:bind path ="s7">
                   <input type="password" id="inputPassword" class="form-control" placeholder="Password"  name ="${status.expression}" value ="${status.value}" >
              </spring:bind>  
          </div>



                          </div>
                          <div class="modal-footer">

                            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>    
                          </div>
          </form:form>
          
    </div> <!-- /container -->


     <script type = "text/javascript" src="<c:url value="/resource/js/jquery.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/bootstrap.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery.ikSelect.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery-ui.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/owl.carousel.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/script.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/star-rating.min.js" />"></script>

      
            
            
   
    </body>
</html>
