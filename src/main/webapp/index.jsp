<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    </head>
    <body>
        <div class="container" style="height:400px;text-align: center;margin-top: 10px">
            <div class="card">
                <div class="card-header">
                    <h2>RESTAURANTE BOSCO</h2>
                </div>
                <div class="card-body" style="height:400px;background-color: grey">
                    <a class="btn btn-outline-light" style="width:60%;margin-bottom:20px;font-weight: bold;font-size: 1.5em" href="servletProductos?op=listar">Listar</a><br>
                    <a class="btn btn-outline-light" style="width:60%;font-weight: bold;font-size: 1.5em" href="servletProductos?op=insert1">Insertar</a> 
                </div>
            </div>
            
        </div>
       
    </body>
</html>
