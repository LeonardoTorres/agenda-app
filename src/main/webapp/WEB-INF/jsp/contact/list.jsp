<%-- 
    Document   : list
    Created on : May 16, 2019, 7:48:27 PM
    Author     : leonardo
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/jsp/template/header.jsp">
    <jsp:param name="title" value="Listar contatos"/>
</jsp:include>
<h1>Hello World</h1>
<table class="table table-striped">
    <thead>
        <tr>
            <th>Nome</th>
            <th>Email</th>
            <th>Telefone</th>
            <th>Ações</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${contactList}" var="contact">
            <tr>
                <td>${contact.name}</td>
                <td>${contact.email}</td>
                <td>${contact.phoneNumber}</td>
                <td><a href="${pageContext.request.contextPath}/contact/code/${contact.code}">Editar</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<jsp:include page="/WEB-INF/jsp/template/footer.jsp"/>
