<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item = (Producto) request.getAttribute("miProducto");
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
            <h1 class="text-center"><%= (item.getId() == 0) ? "Nuevo Registro" : "Editar Registro"%></h1>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form action="MainController" method="POST">
                        <input type="hidden" name="id" value="<%= item.getId()%>">
                        <div class="form-group">
                            <label for="des">Descripcion</label>
                            <input type="text" class="form-control" id="des" name="descripcion" value="<%= item.getDescripcion()%>">
                        </div>
                        <div class="form-group">
                            <label for="cant">Cantidad</label>
                            <input type="number" class="form-control" id="cant" name="cantidad" value="<%= item.getCantidad()%>">
                        </div>
                        <div class="form-group">
                            <label for="pre">Precio</label>
                            <input type="number" class="form-control" id="pre" name="precio" value="<%= item.getPrecio()%>">
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>               
                    </form>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    </body>
</html>
