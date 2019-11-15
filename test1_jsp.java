package org.apache.jsp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
public final class test1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");
      out.write("<html>\n");
      out.write(" <head>\n");
      out.write("<script type='text/javascript'>\n");
      out.write("var isCtrl = false;\n");
      out.write("document.onkeyup=function(e)\n");
      out.write("{\n");
      out.write("if(e.which == 17)\n");
      out.write("isCtrl=false;\n");
      out.write("}\n");
      out.write("document.onkeydown=function(e)\n");
      out.write("{\n");
      out.write("if(e.which == 123)\n");
      out.write("isCtrl=true;\n");
      out.write("if (((e.which == 85) || (e.which == 65) || (e.which == 88) || (e.which == 67) || (e.which == 86) || (e.which == 2) || (e.which == 3) || (e.which == 123) || (e.which == 83)) && isCtrl == true)\n");
      out.write("{\n");
      out.write("alert('This function is disabled');\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("}\n");
      out.write("// right click code\n");
      out.write("var isNS = (navigator.appName == \"Netscape\") ? 1 : 0;\n");
      out.write("if(navigator.appName == \"Netscape\") document.captureEvents(Event.MOUSEDOWN||Event.MOUSEUP);\n");
      out.write("function mischandler(){\n");
      out.write("alert('This function is disabled');\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("function mousehandler(e){\n");
      out.write("var myevent = (isNS) ? e : event;\n");
      out.write("var eventbutton = (isNS) ? myevent.which : myevent.button;\n");
      out.write("if((eventbutton==2)||(eventbutton==3)) return false;\n");
      out.write("}\n");
      out.write("document.oncontextmenu = mischandler;\n");
      out.write("document.onmousedown = mousehandler;\n");
      out.write("document.onmouseup = mousehandler;\n");
      out.write("//select content code disable  alok goyal\n");
      out.write("function killCopy(e){\n");
      out.write("return false\n");
      out.write("}\n");
      out.write("function reEnable(){\n");
      out.write("return true\n");
      out.write("}\n");
      out.write("document.onselectstart=new Function (\"return false\")\n");
      out.write("if (window.sidebar){\n");
      out.write("document.onmousedown=killCopy\n");
      out.write("document.onclick=reEnable\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <h2>Disable code right click and ctrl a, ctrl u, ctrl c, ctrl v key and f12 and select content code</h2>\n");
      out.write("  <div>\n");
      out.write("    Some text...\n");
      out.write("  </div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
