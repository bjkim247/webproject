/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.16
 * Generated at: 2023-12-01 02:38:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.signup;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("import java.io.IOException;\r\n");
      out.write("import javax.servlet.ServletException;\r\n");
      out.write("import javax.servlet.annotation.WebServlet;\r\n");
      out.write("import javax.servlet.http.HttpServlet;\r\n");
      out.write("import javax.servlet.http.HttpServletRequest;\r\n");
      out.write("import javax.servlet.http.HttpServletResponse;\r\n");
      out.write("\r\n");
      out.write("@WebServlet(\"/RegisterServlet\")\r\n");
      out.write("public class RegisterServlet extends HttpServlet {\r\n");
      out.write("    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\r\n");
      out.write("        String uid = request.getParameter(\"uid\");\r\n");
      out.write("        String pw = request.getParameter(\"pw\");\r\n");
      out.write("        String cpw = request.getParameter(\"cpw\");\r\n");
      out.write("        String mail = request.getParameter(\"mail\");\r\n");
      out.write("        String uname = request.getParameter(\"uname\");\r\n");
      out.write("        String year = request.getParameter(\"year\");\r\n");
      out.write("        String month = request.getParameter(\"month\");\r\n");
      out.write("        String day = request.getParameter(\"day\");\r\n");
      out.write("        String[] hobby = request.getParameterValues(\"hobby\");\r\n");
      out.write("        String me = request.getParameter(\"me\");\r\n");
      out.write("\r\n");
      out.write("        // ì í¨ì± ê²ì¬ ë° ë¡ì§ ì²ë¦¬ ë±ì ì´ê³³ìì ìí\r\n");
      out.write("\r\n");
      out.write("        // ìì: í¼ ë°ì´í°ë¥¼ ì¶ë ¥íì¬ íì¸íê¸°\r\n");
      out.write("        System.out.println(\"ìì´ë: \" + uid);\r\n");
      out.write("        System.out.println(\"ë¹ë°ë²í¸: \" + pw);\r\n");
      out.write("        System.out.println(\"ë©ì¼ì£¼ì: \" + mail);\r\n");
      out.write("        // ... (ëë¨¸ì§ ë°ì´í°ë ì²ë¦¬)\r\n");
      out.write("\r\n");
      out.write("        // ì í¨ì± ê²ì¬ê° íµê³¼ëë©´ ë¤ì ë¡ì§ì ìííëë¡ êµ¬í\r\n");
      out.write("\r\n");
      out.write("        // íìí ë¡ì§ ì²ë¦¬ ë° ë°ì´í°ë² ì´ì¤ ìì ë±ì ì¬ê¸°ì ì¶ê°\r\n");
      out.write("\r\n");
      out.write("        // ì±ê³µì ì¼ë¡ ì²ë¦¬ë í ë¤ì íì´ì§ë¡ ë¦¬ë¤ì´ë í¸ ëë ìëµ ì²ë¦¬\r\n");
      out.write("        response.sendRedirect(\"success.jsp\"); // ì±ê³µ íì´ì§ë¡ ì´ë\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
