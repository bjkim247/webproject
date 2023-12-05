package login; 
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession; 
 
public class Logout extends HttpServlet { 
 
 protected void processRequest(HttpServletRequest request,  
 HttpServletResponse response)  throws ServletException, IOException { 
 HttpSession session = request.getSession(false);  
 if(session != null){ 
 
 session.invalidate(); 
 
 } 
 
 response.sendRedirect("Login"); 
 
 }  
 
 @Override 
 protected void doGet(HttpServletRequest request,   
 HttpServletResponse response)  throws ServletException, IOException { 
 processRequest(request, response); 
 
 } 
 @Override 
 protected void doPost(HttpServletRequest request,   HttpServletResponse response)  throws ServletException, IOException { 
 processRequest(request, response); 
 
 } 
 
}
