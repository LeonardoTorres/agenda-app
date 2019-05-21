<%-- 
    Document   : header
    Created on : May 20, 2019, 6:46:47 PM
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>${param.title}</title>
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-expand navbar-light bg-light" style="margin-bottom: 2em;" >
                <a class="navbar-brand" href="${pageContext.request.contextPath}">Agenda App</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/contact/new">Novo contato</a> 
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/contact/list">Listar contatos</a>
                        </li>
                    </ul>
                </div>
            </nav>    
