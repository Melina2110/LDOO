<%-- 
    Document   : Index
    Created on : 22/04/2019, 09:33:33 PM
    Author     : Melina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Practica 9 </title>
        <script src="js/main.js"></script> 
    </head>
    <body style="background-color:coral">
    <tt>
        <h2> Login </h2>
        
        <form action="Iniciar" method="post" id="formicidio">
            <label> Nombre </label>
            <input type="text" name="usuario" ed="txtusuario"/>
            <label> Contraseña </label>
            <input type="password" name="pass" id="txtpass"/>
            <input type="button" value="Login" id="btniniciar"/>    
        </form>
    </tt>
    </body>
</html>
