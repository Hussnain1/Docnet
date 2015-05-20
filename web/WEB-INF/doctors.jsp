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
        <title>${message}</title>
    </head>
    <body>
        <h1>${message}</h1><br>
        <table>
            <tr>
                <th>CNIC</th>
                <th>Password</th>
                <th>Status</th>
            </tr>
            <c:forEach items="${logintables}" var="logintable">
            <tr>
                <td><c:out value="${logintable.cnic}"></c:out></td>
                <td><c:out value="${logintable.password}"></c:out></td>
                <td><c:out value="${logintable.status}"></c:out></td>
            </tr>
            </c:forEach>
        </table>
        </body>
</html>
