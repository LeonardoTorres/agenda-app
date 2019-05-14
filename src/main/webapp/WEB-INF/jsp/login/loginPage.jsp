<%-- 
    Document   : loginPage
    Created on : May 13, 2019, 8:56:35 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div>
            <p>Usuário: ${userSession.user.userName}</p>
            <p style="color: red;">${msgLoginError}</p>
            <form action="auth" method="post">
                <div>
                    <label for="">Usuário</label>
                    <input type="text" name="userName" value="${userName}"/>
                </div>
                <div>
                    <label for="">Senha</label>
                    <input type="password" name="password" value="${password}"/>
                </div>
                <div>
                    <button type="submit">Entrar</button>
                </div>
            </form>
        </div>
    </body>
</html>
