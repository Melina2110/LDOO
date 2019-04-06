<%-- 
    Document   : Practicajsp3
    Created on : 9/03/2019, 01:45:52 PM
    Author     : Melina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Formulario JSP </title>
     </head>
     <body style="background-color:coral">
     <tt> <center>
        <h1> Formulario </h1>
        <h2>
        
            <%
             
    String nombre=request.getParameter("nombre");
    String apellido1=request.getParameter("apellido1");
    String apellido2=request.getParameter("apellido2");
    String fecha=request.getParameter("fecha");
    String email=request.getParameter("correo");
    String contraseña=request.getParameter("contraseña");
    
           %>
          
           
    Nombre: <%=nombre%><br>
    Apellido Paterno: <%=apellido1%><br>
    Apellido Materno: <%=apellido2%><br>
    Fecha de nacimiento: <%=fecha%><br>
    E-mail: <%=email%><br>
    Contraseña: <%=contraseña%><br>
    
    <a href="practica.3.jsp"> </a>
    
        </h2>
         </center> 
        </tt>
    </body>
</html>

