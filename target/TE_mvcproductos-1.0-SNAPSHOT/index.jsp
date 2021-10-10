<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

        <title>Participacion JBYCH</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Listado de Productos</h1>
            <div class="row">
                <div class="col float-right">
                    <a class="btn btn-primary float-right" href="MainController?op=nuevo">Nuevo Registro</a>
                </div>                
            </div> <br>

            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover">
                        <thead class="thead-dark">
                            <tr>
                                <th>ID</th>
                                <th>Descripcion</th>
                                <th>Cantidad</th>
                                <th>Precio</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>

                        <%
                            if (lista != null) {
                                for (Producto item : lista) {
                        %>
                        <tr>
                            <td><%= item.getId()%></td>
                            <td><%= item.getDescripcion()%></td>
                            <td><%= item.getCantidad()%></td>
                            <td><%= item.getPrecio()%></td>
                            <td><a class="btn btn-warning btn-sm" href="MainController?op=editar&id=<%=item.getId()%>">Editar</a></td>
                            <td><a class="btn btn-danger btn-sm" href="MainController?op=eliminar&id=<%=item.getId()%>" 
                                   onclick="return confirm('Esta seguro que desea Eliminar el Registro ?');">Eliminar</a></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </table> 
                </div>
            </div>

        </div>        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    </body>
</html>
