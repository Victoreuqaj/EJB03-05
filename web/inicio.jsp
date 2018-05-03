<%-- 
    Document   : inicio
    Created on : 02-05-2018, 19:23:11
    Author     : Víctor
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="template/header.jsp"/>
<c:import url="template/menu.jsp"/>    
<body>
    <div class="row">
        <div class="col s4 offset-s4">
            <div class="card-panel">
                <h3 class="card-panel grey z-depth-3">Inicio de sesión</h3>
                <div class="row card-panel blue-grey">
                    <form action="control.do" method="post">
                        Rut
                        <br>
                        <input type="text" name="txt1" value="${param.txt1}">
                        <br>
                        Clave
                        <br>
                        <input type="password" name="txt2" value="${param.txt2}">
                        <br>
                        <button name="bt" value="inicio">OK</button>


                    </form
                    <p class="red-text">
                        ${msg}
                    </p>

                </div>
            </div>
        </div>

    </div>
    <c:import url="template/footer.jsp"/>
</body>
</html>
