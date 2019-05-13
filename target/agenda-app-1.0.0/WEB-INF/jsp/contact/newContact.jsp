<%-- 
    Document   : newContact
    Created on : May 9, 2019, 7:33:20 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Novo Contato</h1>
        <form action="save" method="post">
            <input type="text" name="contact.name"/>
            <input type="text" name="contact.email"/>
            <input type="text" name="contact.phoneNumber"/>
            <button>Salvar</button>
        </form>
    </body>
</html>
