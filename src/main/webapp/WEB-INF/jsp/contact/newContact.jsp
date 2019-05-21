<%-- 
    Document   : newContact
    Created on : May 9, 2019, 7:33:20 PM
    Author     : leonardo
--%>


<jsp:include page="/WEB-INF/jsp/template/header.jsp">
    <jsp:param name="title" value="Novo contato"/>
</jsp:include>

<div class="row">
    <div class="col-4 offset-4">
        <form action="${pageContext.request.contextPath}/contact/${actionForm}" method="post">
            <input type="hidden" name="contact.code" value="${contact.code}"/>
            <div class="form-group">
                <label for="name">Nome:</label>
                <input id="name" type="text" class="input-group" name="contact.name"
                       value="${contact.name}"/>
            </div>
            <div class="form-group">
                <label for="email" >Email:</label>
                <input id="email" type="email" class="input-group" name="contact.email"
                       value="${contact.email}"/>
            </div>
            <div class="form-group">
                <label for="phone">Cel:</label>
                <input id="phone" type="text" class="input-group" name="contact.phoneNumber"
                       value="${contact.phoneNumber}"/>
            </div>
            <div class="form-group">
                <button class="btn btn-block btn-success">${labelButton}</button>
            </div>
        </form>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/template/footer.jsp"/>