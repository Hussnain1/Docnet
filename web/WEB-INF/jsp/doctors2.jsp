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
        <title>Adding new user</title>
    </head>
    <body>
        <h1>Adding New user</h1>
 
        <form:form method="POST" commandName="doctors">
            CNIC:
            <spring:bind path ="cnic">
                <input type ="number" name ="${status.expression}" value ="${status.value}">
            </spring:bind><p>
                
            Password:
            <spring:bind path ="password">
                <input type ="text" name ="${status.expression}" value ="${status.value}">
            </spring:bind><p>
                
            Status:
            <spring:bind path ="status">
                <input type ="text" name ="${status.expression}" value ="${status.value}">
            </spring:bind><p>
                
            <input type ="submit"  value ="Register">
        </form:form>
 
                
    </body>
</html>
