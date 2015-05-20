
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

    <title>Doctor Details</title>

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

      
        <h1>Doctors Available</h1><br>
        <table>
            <tr>
                <th>Speciality</th>
                <th>City</th>
               
            </tr>
            <c:forEach items="${doctors}" var="logintable">
            <tr>
                <td><c:out value="${logintable.doctordepartment}"/></td>
                <td><c:out value="${logintable.city}"/></td>
               
            </tr>
            </c:forEach>
        </table>
      
        
        
        
        <form:form method="POST" commandName="searchDoctor" class="form-signin">
        <h2 class="form-signin-heading">Register Here</h2>
        

        <label for="inputCity" class="sr-only">City</label>
            <spring:bind path ="city">
                 <input type="text" id="inputCity" class="form-control" placeholder="City"  name ="${status.expression}" value ="${status.value}" >
            </spring:bind>
               
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
          </form:form>
          
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


      
            
            
   
    </body>
</html>
