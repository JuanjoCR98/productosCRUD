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
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
         <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    </head>
    <body>
        <% List<Productos> misProductos = (List<Productos>) request.getAttribute("misProductos");%>
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h3>Menú del restaurante Bosco</h3>
                </div>
                <div class="body">
                    <table class="table table-striped"">
                        <tr>
                            <th>Nombre</th>
                            <th>Imagen</th>
                            <th>Categoria</th>
                            <th>Precio</th>
                            <th></th>
                            <th></th>
                        </tr>
                        <% for (Productos p : misProductos) {
                                String cadenaBorrar = "<a onclick='return Confirmation()' href='servletProductos?op=borrar&id=" + p.getId() + "'>X</a>";
                                String cadenaActualizar = "<a href='servletProductos?op=update1&id=" + p.getId() + "'>Actualizar</a>";
                        %>

                        <tr>
                            <td><%=p.getNombre()%></td>
                            <td><%=p.getImagen()%></td>
                            <td><%=p.getCategoria()%></td>
                            <td><%=p.getPrecio()%></td>
                            <td><%=cadenaBorrar%></td>
                            <td><%=cadenaActualizar%></td>
                        </tr>
                        <%}%>
                    </table>
                </div>
                    <div class="card-fotter" style="text-align: center">
                        <p>Volver al menú principal</p>
                    </div>
            </div>
        </div>
        
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
