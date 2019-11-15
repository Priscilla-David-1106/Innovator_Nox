package org.apache.jsp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.security.NoSuchAlgorithmException;
import java.security.MessageDigest;
import java.security.KeyPairGenerator;
import java.security.Signature;
import javax.crypto.Cipher;
import java.security.KeyPair;
import java.sql.*;;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.xml.bind.DatatypeConverter;
public final class records_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {
private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();
private static java.util.Vector _jspx_dependants;
private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;
public Object getDependants() {
return _jspx_dependants;
}
public void _jspService(HttpServletRequest request, HttpServletResponse response) throws java.io.IOException, ServletException {
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>PPDM - Twitter</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" >\n");
      out.write("<style>\n");
      out.write("table {\n");
      out.write("border-collapse: collapse;\n");
      out.write("width: 75%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("th, td {\n");
      out.write("text-align: left;\n");
      out.write("padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("tr:nth-child(even){background-color: #f2f2f2}\n");
      out.write("\n");
      out.write("th {\n");
      out.write("background-color: #e67e22;\n");
      out.write("color: white;\n");
      out.write("}\n");
      out.write("</style>\n");
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <p><b>Privacy Preserving Data Mining For\n");
      out.write("Large Scale User Data In Twitter</b></p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"menu\">\n");
      out.write("            <ul class=\"nav\">\n");
      out.write("                <li><a href=\"cloudhome.jsp\">Home</a></li>\n");
      out.write("                <li><a class=\"active\" href=\"records.jsp\">APP</a></li>\n");
      out.write("                <li><a href=\"userlist.jsp\">LOC</a></li>\n");
      out.write("                <li><a href=\"report2.jsp\">APP-LOC</a></li>                \n");
      out.write("                <li><a href=\"index.jsp\">Log Out</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"content\">\n");
      out.write("            <h2 align=\"center\"><font color=\"#6c5ce7\">Search Result</font></h2> \n");
      out.write("            <form action=\"records.jsp\" method=\"post\">\n");
      out.write("            <h3 align=\"center\">Application&nbsp;&nbsp;&nbsp;<select name=\"app\" >\n");
      out.write("                     <option></option> \n");
      out.write("                     ");

                     String app = "";
                     //String app = "Twitter for iPhone";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
            Statement stmt = con.createStatement();
            ResultSet rss =stmt.executeQuery("SELECT DISTINCT app FROM data");
            while(rss.next())
                               {
            
      out.write("\n");
      out.write("                  \n");
      out.write("            <option>");
      out.print(rss.getString("app"));
      out.write("</option> \n");
      out.write("                     ");

                     }
           
      out.write("\n");
      out.write("                </select></h3>\n");
      out.write("                <h3 align=\"center\"><input type=\"submit\" value=\"search\" /></h3>\n");
      out.write("                \n");
      out.write("          </form>\n");
      out.write("            <br>\n");
      out.write("             ");

        app= request.getParameter("app");
        Class.forName("com.mysql.jdbc.Driver");
            //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tweet","root","root");
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery("SELECT COUNT(*) FROM data where app='"+app+"'");
            while(rs.next()){
                 String a = rs.getString(1);
        
      out.write("\n");
      out.write("        <h3>");
      out.print(app);
      out.write("</h3>\n");
      out.write("        <h4>No.Of Rows : &nbsp;&nbsp;&nbsp;");
      out.print(a);
      out.write("</h4>\n");
      out.write("        ");

               }
            
        
      out.write("\n");
      out.write("            <h2 align=\"center\"><font color=\"#6c5ce7\">Tweet Details</font></h2> \n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Tweet Id</th>\n");
      out.write("                    <th>Date</th>\n");
      out.write("                    <th>Tweet</th>\n");
      out.write("                     <th>Application</th>\n");
      out.write("                    <th>Full_Name</th>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                ");


Statement stt = con.createStatement();
ResultSet rsr = stt.executeQuery("select * from data where app='"+app+"'");
while(rsr.next())
{
      //String passwordToHash = rsr.getString("tweet_text");
        String plainText = rsr.getString("tweet_text");
        KeyGenerator generator = KeyGenerator.getInstance("AES");
        generator.init(128); // The AES key size in number of bits
        SecretKey secKey = generator.generateKey();
        Cipher aesCipher = Cipher.getInstance("AES");
        aesCipher.init(Cipher.ENCRYPT_MODE, secKey);
       byte[] byteCipherText = aesCipher.doFinal(plainText.getBytes()); 
        String aaa = byteCipherText.toString();

      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rsr.getString("tweet_id"));
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(rsr.getString("date"));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print(aaa);
      out.write("</td>\n");
      out.write("                      <td>");
      out.print(rsr.getString("app"));
      out.write("</td>\n");
      out.write("                       <td>");
      out.print(rsr.getString("full_name"));
      out.write("</td>\n");
      out.write("                        \n");
      out.write("                </tr>\n");
      out.write("                ");

                               }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("            <br /><br /><br />\n");
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
