<%-- 
    Document   : index
    Created on : 14/03/2019, 11:07:13 PM
    Author     : Melina
--%>
<%@page import="Modelo.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Formulario MVS </title>
    </head>
    <body style="background-color:coral"> 
         <center> <tt>
        <h1> Formulario </h1>
         <form action="Controlador" method="POST">
            Nombre:
        <input type="text" name="nombre"><br>
            E-mail:
        <input type="email" name="correo"><br>
            Contraseña:
         <input type="password" name="contraseña"><br>
         
         <input type="submit" value="login">
            
         <%
            Control obj = new Control(); 
              obj = (Control)request.getAttribute("ObjetoJava");
                if(obj!=null){
                    out.println(obj.getNombre()+"<br/>");
                    out.println(obj.getCorreo()+"<br/>");
                    out.println(obj.getContraseña()+"<br/>");
                    
                }
         %>
        
         </form>
        </tt></center> 
    </body>
</html>
