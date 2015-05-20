<%-- 
    Document   : doctors
    Created on : Apr 20, 2015, 10:30:03 PM
    Author     : asadqureshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Details</title>
    </head>
    <body>
        <h1>Doctor Details</h1><br>
        <table>
            <tr>
                <th>DEPARTMENT</th>
                <th>CITY</th>
               
            </tr>
            <c:forEach items="${doctors}" var="doc">
            <tr>
                <td><c:out value="${doc.doctordepartment}"/></td>
                <td><c:out value="${doc.city}"/></td>
                </tr>
            </c:forEach>
        </table>
      
    </body>
</html>
