<%-- 
    Document   : list
    Created on : May 16, 2019, 7:48:27 PM
    Author     : leonardo
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<jsp:include page="/WEB-INF/jsp/template/header.jsp">
    <jsp:param name="title" value="Listar contatos"/>
</jsp:include>

<c:choose>
    <c:when test="${fn:length(contactList) == 0}">
        <p class="alert alert-info">Não há dados para exibir!</p> 
    </c:when>
    <c:otherwise>
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
                        <td>
                            <a href="${pageContext.request.contextPath}/contact/code/${contact.code}">Editar</a>
                            <form action="${pageContext.request.contextPath}/contact/remove" method="post">
                                <input type="hidden" name="code" value="${contact.code}"/>
                                <button type="submit" class="">Remover</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>

    </tbody>
</table>
<jsp:include page="/WEB-INF/jsp/template/footer.jsp"/>
