package com.laboratorio.loginservlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Melina
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
    request.getRequestDispatcher("link.html").include(request, response);
        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        if(password.equals("admin")){
            out.print("Acceso Correcto");
           Cookie ck= new Cookie("name", username);
            response.addCookie(ck);
        }else{
        
            out.print("Acceso Incorrecto");
            request.getRequestDispatcher("login.html").include(request, response);
             }    
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

   PrintWriter out = null;
   request.getRequestDispatcher("link.html").include(request, response);
   
        String username=request.getParameter("username");
        String password=request.getParameter("password"); 
        
        if(password.equals("admin")){
            out.print("Acceso Exitoso");
           Cookie ck= new Cookie("name", username);
            response.addCookie(ck);
        }else{
        
            out.print("Acceso Incorrecto");
            request.getRequestDispatcher("login.html").include(request, response);
}
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
