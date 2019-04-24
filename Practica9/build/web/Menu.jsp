<%-- 
    Document   : Menu
    Created on : 22/04/2019, 10:11:34 PM
    Author     : Melina
--%>
<%
    HttpSession objSession = request.getSession(false);
    String usuario=(String) objSession.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("Index.jsp");
    }
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Practica 9 </title>
    </head>
    <body style="background-color:coral">
    <tt>
        <h2> Acceso Correcto </h2>
    </tt>
    </body>
</html>
