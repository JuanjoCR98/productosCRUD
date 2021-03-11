<%-- 
    Document   : update
    Created on : 08-mar-2021, 19:46:25
    Author     : Juanjo Cortés
--%>

<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Productos producto = (Productos) request.getAttribute("miProducto");%>
        <h1>Nuevo producto</h1>
        <form action="servletProductos" method="get">
        <p><label>Nombre: <input type="text" name="nombre" value="<%=producto.getNombre()%>" required > </label></p>
        <p><label>Imagen: <input type="text" name="imagen" value="<%=producto.getImagen()%>" required > </label></p>
        <p><label>Categoría: <input type="text" name="categoria" value="<%=producto.getCategoria()%>" required > </label></p>
        <p><label>Precio: <input type="text" name="precio" value="<%=producto.getPrecio()%>" required > </label></p>
        <input type="text" name="op" required value="update2"> 
        <input type="submit" value="Actualizar" >       
        </form>
    </body>
</html>