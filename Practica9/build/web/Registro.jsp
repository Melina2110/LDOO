<%-- 
    Document   : Registro
    Created on : 22/04/2019, 10:24:30 PM
    Author     : Melina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Practica 9 </title>
    </head>
    <body style="background-color:coral"><tt>
        <h2> Registro: </h2>
        <form action="nuevousuario" method="post">
            <label> Usuario </label>
            <input type="text" name="usuario"/><br>
            <label> Nombre </label>
            <input type="text" name="nombre"/><br>
            <label> Contraseña </label>
            <input type="password" name="password"/><br>
            <input type="submit" value="Registrar"/>
        </form>
        </tt>
    </body>
</html>