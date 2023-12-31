package sample;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
    //멤버변수
	private String tel;
	private String password;
	
    public Hello() {
        super();
    }

    
	@Override
	public void init() throws ServletException {
		super.init();
		ServletConfig sc = this.getServletConfig();
		tel = sc.getInitParameter("tel");
		password = sc.getInitParameter("password");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		Date date = new Date();
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>My First Servlet Program kdj </h1>");
        out.println("<br>");
        out.println(date.toString());
        out.println("<br>");
        out.println("<li>전화번호 : " + this.getTel() + "</li>");
        out.println("<li>패스워드 : " + this.getPassword() + "</li>");
        out.println("</body>");
        out.println("</html>");
        out.close();
	}

	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
