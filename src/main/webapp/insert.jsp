<%-- 
    Document   : insert
    Created on : 05-mar-2021, 20:42:00
    Author     : Juanjo Cortés
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    </head>
    <body>
        <h1>Nuevo producto</h1>
         <form action="servletProductos" method="get">
        <p><label>Nombre: <input type="text" name="nombre" required > </label></p>
        <p><label>Imagen: <input type="text" name="imagen" required > </label></p>
        <p><label>Categoría: <input type="text" name="categoria" required > </label></p>
        <p><label>Precio: <input type="text" name="precio" required > </label></p>
        <input type="text" name="op" required value="insert2"> 
        <input type="submit" value="insertar" >       
        </form>
    </body>
</html>
