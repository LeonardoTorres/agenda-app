<%-- 
    Document   : loginPage
    Created on : May 13, 2019, 8:56:35 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    </head>
    <title>Login</title>
</head>
<body>
    <main class="container" style="margin-top: 2.5em;">
        <div class="row">
            <div class="col-4 offset-4">
                <section class="card border border">
                    <div class="card-header">
                        <h5 class="text-center mt-2">Login - Agenda App</h5>
                    </div>
                    <div class="card-body">
                        <form action="auth" method="post">
                            <div class="form-group">
                                <input id="userName" placeholder="Usuário" class="form-control" type="text" name="userName" value="${userName}"/>
                            </div>
                            <div class="form-group">
                                <input id="password" placeholder="Senha" class="form-control" type="password" name="password" value="${password}"/>
                            </div>  
                            <p class="text-danger">${msgLoginError}</p>
                            <button class="btn btn-block btn-success">Entrar</button>           
                        </form>
                    </div>
                </section>
            </div>
        </div>
    </div>
</main>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"/>
</body>
</html>
