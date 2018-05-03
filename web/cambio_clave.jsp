<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="template/header.jsp"/>
<body>
    <c:if test="${not empty person}">
        <div class="container">
        <h4>Cambiar Clave</h4>
        <form action="control.do" method="post">
            Clave actual
            <input type="password" name="x1"/>
            Clave nueva
            <input type="password" name="x2"/>
            Confirme clave nueva
           <input type="password" name="x3"/>
           <button name="btn" value="cambio">
               Cambiar
           </button>
        </form>
        <p class="blue-grey-text">
            ${msg}
        </p>
        </div>
    </c:if>
    <c:if test="${empty person}">
        <p>
            Serás redireccionado en 5 segundos
            <meta http-equiv="refresh"
                  content="5: url=inicio.jsp">
        </p>
    </c:if>
    <c:import url="template/footer.jsp"/>
</body>

</html>
