package org.apache.jsp
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {
private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();
private static java.util.Vector _jspx_dependants;
private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;
public Object getDependants() {
return _jspx_dependants;
}
public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {
PageContext pageContext = null;
HttpSession session = null;
ServletContext application = null;
ServletConfig config = null;
JspWriter out = null;
Object page = this;
JspWriter _jspx_out = null;
PageContext _jspx_page_context = null;
    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>PPDM - Twitter</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" >\n");
      out.write("        <style>\n");
      out.write("            a\n");
      out.write("            {\n");
      out.write("                text-decoration: none;\n");
      out.write("                color : #00b894;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <p><b>Privacy Preserving Data Mining For\n");
      out.write("Large Scale User Data In Twitter</b></p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"menu\">\n");
      out.write("            <ul class=\"nav\">\n");
      out.write("                <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                <li><a class=\"active\" href=\"userlogin.jsp\">User</a></li>\n");
      out.write("                <li><a href=\"index.jsp\">Data Owner</a></li>\n");
      out.write("                <li><a href=\"index.jsp\">Cloud</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <h3 align=\"center\"><font color=\"#6c5ce7\">User Register For Twitter</font></h3>\n");
      out.write("            <form action=\"RegServlet\" method=\"post\">\n");
      out.write("            <table align=\"center\" cellpadding=\"10\" cellspacing=\"10\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"name\" /></td>\n");
      out.write("                    <td>DOB</td>\n");
      out.write("                    <td><input type=\"text\" name=\"dob\" /></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td>Mobile</td>\n");
      out.write("                    <td><input type=\"text\" name=\"mobile\" /></td>\n");
      out.write("                    <td>city</td>\n");
      out.write("                    <td><input type=\"text\" name=\"city\" /></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td><input type=\"text\" name=\"address\" /></td>\n");
      out.write("                    <td>pincode</td>\n");
      out.write("                    <td><input type=\"text\" name=\"pincode\" /></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td>E Mail Id</td>\n");
      out.write("                    <td><input type=\"text\" name=\"email\" /></td>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"pass\" /></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><input type=\"reset\" value=\"Clear\" /></td>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><input type=\"submit\" value=\"Submit\" /></td>\n");
      out.write("                </tr> \n");
      out.write("            </table>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <br>\n");
      out.write("            <h3 align=\"center\"><font color=\"white\">Zone of Privacy</font></h3>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
