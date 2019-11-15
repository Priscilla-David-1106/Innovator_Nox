package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cloudhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\t<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\t\t\t<title>PPDM - Twitter</title>\r\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/style.css\" >\r\n");
      out.write("\t\t\t</head>\r\n");
      out.write("\t\t\t<body>\r\n");
      out.write("\t\t\t\t<div class=\"header\">\r\n");
      out.write("\t\t\t\t\t<p><b>Guarding the privacy zealously! </b></p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"menu\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"nav\">\r\n");
      out.write("\t\t\t\t\t\t<li><a class=\"active\" href=\"cloudhome.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"records.jsp\">APP</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"userlist.jsp\">LOC</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"report2.jsp\">APP-LOC</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"index.jsp\">Log Out</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"content\">\r\n");
      out.write("\t\t\t\t\t<h1 align=\"center\"><img src=\"images/twitter.png\" width=\"290\" height=\"174\" alt=\"hc\"/>\r\n");
      out.write("\t\t\t\t\t\t<font color=\"#6c5ce7\">Twitter</font>\r\n");
      out.write("\t\t\t\t\t</h1>\r\n");
      out.write("\t\t\t\t\t<br /><br /><br />\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"footer\">\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<h3 align=\"center\"><font color=\"white\"> Zone of Privacy </font></h3>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</body>\r\n");
      out.write("\t\t\t</html>\r\n");
      out.write("\t\t\t");
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
