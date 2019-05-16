<%-- 
    Document   : list
    Created on : May 16, 2019, 7:48:27 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World</h1>
        <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${contactList}" var="contact">
                    <tr>
                        <td>${contact.name}</td>
                        <td>${contact.email}</td>
                        <td>${contact.phoneNumber}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
