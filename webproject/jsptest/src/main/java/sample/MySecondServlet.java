package sample;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


public class MySecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MySecondServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//화면 문자셋
		response.setContentType("text/html;charset=utf-8");
		//화면 출력할 객체생성
		PrintWriter pw = response.getWriter();
		//출력할 데이터(데이터베이스에서 Select)
		Date date = new Date();
		 String displayDate = date.toString();
		 //화면에 출력할 내용을 설정
		 pw.println("<!DOCTYPE html>");
		 pw.println("<html>");
		 pw.println("<head>");
		 pw.println("<meta charset='UTF-8'>");
		 pw.println("<title>Insert title here</title>");
		 pw.println("</head>");
		 pw.println("<body>");
		 for(int i=0;i<10;i++) {
		 pw.println("<h2>"+displayDate+"</h2>");
		 }
		 pw.println("</body>");
		 pw.println("</html>");
		 
		 
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
		 
		 
		 
		 
		 
		 
		
		 
		 	
		 	
		 
		 
