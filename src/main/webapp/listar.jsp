<%-- 
    Document   : listar
    Created on : 05-mar-2021, 20:57:25
    Author     : Juanjo Cortés
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% List<Productos> misProductos = (List<Productos>) request.getAttribute("misProductos");%>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Imagen</th>
                <th>Categoria</th>
                <th>Precio</th>
                <th></th>
            </tr>
            <% for(Productos p:misProductos){ 
                String cadenaBorrar = "<a onclick='return Confirmation()' href='servletProductos?op=borrar&id="+p.getId()+"'>X</a>";
            %>
            
            <tr>
                <td><%=p.getNombre()%></td>
                <td><%=p.getImagen()%></td>
                <td><%=p.getCategoria()%></td>
                <td><%=p.getPrecio()%></td>
                <td><%=cadenaBorrar%></td>
            </tr>
            <%}%>
        </table>
        <script type="text/javascript">
            function Confirmation(){
                if(confirm("¿Está seguro?")){
                    alert("Procedo a borrar");
                    return true;
                }else{
                    alert("Cancelar..");
                    return false;
                }
            }
        </script>
    </body>
</html>
