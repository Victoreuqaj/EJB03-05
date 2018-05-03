<%-- 
    Document   : edit
    Created on : 25-abr-2018, 19:31:49
    Author     : roman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body class="grey">
        <div class="container">





            <div class="card-panel z-depth-3">

                <form action="control.do" method="post">
                    <h3 class="hide-on-small-only"> 
                        Detalle del producto ${producto.nombre}
                    </h3>
                    <!-- FILA -->
                    <div class="row">
                        <!-- COLUMNA 1-->
                        <div class="col s12 m6 l6">
                            <input type="hidden" name="txt1" value="${producto.id}"/>

                            Nombre<br>
                            <input readonly type="text" name="txt2" value="${producto.nombre}"/>

                        </div>
                        <!-- COLUMNA 2-->    
                        <div class="col s12 m6 l6">
                            Precio<br>
                            <input type="text" name="txt3" value="${producto.precio}"/>

                        </div>
                        <!-- COLUMNA 3-->   
                        <div class="col s12">
                            <button class="btn red" name="bt" value="delete">
                                Eliminar
                                <i class="material-icons left">delete</i>
                            </button>
                            <button class="btn blue" name="bt" value="edit">
                                Editar
                                <i class="material-icons left">edit</i>
                            </button>
                        </div>

                    </div>
                </form>
            </div>

        </div>


        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
