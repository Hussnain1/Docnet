
     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
 <link href="<c:url value="/resource/css/signin.css" />" rel="stylesheet" type="text/css" />

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      
        <form:form method="POST" commandName="signup" class="form-signin">
        <h2 class="form-signin-heading">Register Here</h2>
        
        <label for="inputEmail" class="sr-only">Email address</label>
        <spring:bind path ="cnic">
        <input type="text" id="inputEmail" class="form-control" placeholder="CNIC"  name ="${status.expression}" value ="${status.value}" required autofocus >
        </spring:bind>
     
        <label for="inputPassword" class="sr-only">Password</label>
            <spring:bind path ="password">
                 <input type="password" id="inputPassword" class="form-control" placeholder="Password"  name ="${status.expression}" value ="${status.value}" >
            </spring:bind>
                
         <label for="inputStatus" class="sr-only">Status</label>
            <spring:bind path ="status">
               <input type="text" id="inputStatus" class="form-control" placeholder="Status"  name ="${status.expression}" value ="${status.value}" >
            </spring:bind>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
          </form:form>
          
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


      
            
            
   
    </body>
</html>
