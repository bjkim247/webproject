package login; 
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession; 
 
public class LoginCheck extends HttpServlet { 
 
 protected void processRequest(HttpServletRequest request,  
 HttpServletResponse response)  throws ServletException, IOException { 
 request.setCharacterEncoding("utf-8");  
 String id = request.getParameter("id"); 
 
 String pwd = request.getParameter("pwd"); 
 
 //db에서 사용자 정보 조회.... 이부분의 코딩을 수정해서 만들어 볼것 //db에서 조회한 사용자의 아이디 비번이 일치하는 경우 //클라이언트의 정보를 HttpSession객체에 유지 시킨다. 
 String dbID = "admin"; 
 
 String dbPWD = "1234"; 
 
 if(dbID.equals(id) && dbPWD.equals(pwd)){  
 //HttpSession객체 얻기 
 HttpSession session = request.getSession();
 //클라이언트의 정보를 HttpSession객체에 저장  session.setAttribute("user", id); 
 } 
 
 response.sendRedirect("Login"); 
 
 }  
 
 @Override 
 protected void doGet(HttpServletRequest request,  
 HttpServletResponse response)  throws ServletException, IOException { 
 processRequest(request, response); 
 
 }  
 
 @Override 
 protected void doPost(HttpServletRequest request,   
 HttpServletResponse response)  throws ServletException, IOException { 
 processRequest(request, response); 
 
 } 
 
}
