<%-- 
    Document   : appointments
    Created on : Apr 20, 2015, 9:28:04 PM
    Author     : asadqureshi
--%>

<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Password</title>
    </head>
    <body>
        <h1>Edit Password</h1>
 
        <form:form method="POST" commandName="updateEntry">
            CNIC:
            <spring:bind path ="cnic">
                <input type ="number" name ="${status.expression}" value ="${status.value}">
            </spring:bind><p>
                
            Old Password:
            <spring:bind path ="password">
                <input type ="text" name ="${status.expression}" value ="${status.value}">
            </spring:bind><p>
            NEw passqword: 
           <spring:bind path ="status">
                <input type ="text" name ="${status.expression}" value ="${status.value}">
            </spring:bind><p>
                
            <input type ="submit"  value ="Update">
        </form:form>
 
                
    </body>
</html>
