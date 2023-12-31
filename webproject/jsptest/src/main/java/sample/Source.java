package sample;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class Source extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Source() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("start point");
		//값을 가져와서, -> 디비 (curd)
//		request.setAttribute("name", "kimbyungjun");
		//화면에 뿌려줄 서블릿 콜한다.
//       RequestDispatcher rd = request.getRequestDispatcher("Destination");
//       rd.forward(request, response);
		//값을 전달
		HttpSession session = request.getSession();
		String age = request.getParameter("age");
		session.setAttribute("name", "kimbyungjun");
		session.setAttribute("age", age);
		
		response.sendRedirect("Destination?age2=30");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
