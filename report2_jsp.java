package org.apache.jsp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;;
public final class report2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {
private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();
private static java.util.Vector _jspx_dependants;
private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;
public Object getDependants() {
return _jspx_dependants; }
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>PPDM - Twitter</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" >\n");
      out.write("        <style>\n");
      out.write("table {\n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 75%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("th, td {\n");
      out.write("  text-align: left;\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("tr:nth-child(even){background-color: #f2f2f2}\n");
      out.write("\n");
      out.write("th {\n");
      out.write("  background-color: #e67e22;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("select\n");
      out.write("{\n");
      out.write("    height: 30px;\n");
      out.write("    width: 250px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <p><b>Privacy Preserving Data Mining For\n");
      out.write("Large Scale User Data In Twitter</b></p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"menu\">\n");
      out.write("            <ul class=\"nav\">\n");
      out.write("                <li><a href=\"cloudhome.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"userlist.jsp\">APP</a></li>\n");
      out.write("                <li><a class=\"active\" href=\"report2.jsp\">LOC</a></li>\n");
      out.write("                <li><a href=\"records.jsp\">APP-LOC</a></li>\n");
      out.write("                <li><a href=\"index.jsp\">Log Out</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"content\">\n");
      out.write("            <h2 align=\"center\"><font color=\"#6c5ce7\">Search Result</font></h2> \n");
      out.write("           <form action=\"report2.jsp\" method=\"post\">\n");
      out.write("            <h3 align=\"center\"><select name=\"loc\">\n");
      out.write("                    ");

                    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
            Statement ss = con.createStatement();
            ResultSet rr =ss.executeQuery("SELECT DISTINCT location FROM data");
            while(rr.next())
                               {
                    
      out.write("\n");
      out.write("                    <option>");
      out.print(rr.getString("location"));
      out.write("</option>\n");
      out.write("                    ");

                                       }
                    
      out.write("\n");
      out.write("                </select></h3>\n");
      out.write("                <h3 align=\"center\"><select name=\"app\">\n");
      out.write("                    ");

                   
            Statement sss = con.createStatement();
            ResultSet rrr =sss.executeQuery("SELECT DISTINCT app FROM data");
            while(rrr.next())
                               {
                    
      out.write("\n");
      out.write("                    <option>");
      out.print(rrr.getString("app"));
      out.write("</option>\n");
      out.write("                    ");

                                       }
                    
      out.write("\n");
      out.write("                </select></h3>\n");
      out.write("        <h3 align=\"center\"><input type=\"submit\" value=\"search\" /></h3>\n");
      out.write("        </form>\n");
      out.write("        ");

        String loc= request.getParameter("loc");
       String app = request.getParameter("app");
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery("SELECT COUNT(*) FROM data where location='"+loc+"' and app='"+app+"'");
            while(rs.next()){
                String a = rs.getString(1);
        
      out.write("\n");
      out.write("        <h4>No.Of Rows : &nbsp;&nbsp;&nbsp;");
      out.print(a);
      out.write("</h4>\n");
      out.write("        ");

               }
        
      out.write("\n");
      out.write("        <table align=\"center\" cellpadding=\"5\" cellspacing=\"5\" border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Full Name</th>\n");
      out.write("                <th>Tweet</th>\n");
      out.write("                <th>Tweet Id</th>\n");
      out.write("                <th>Retweet</th>\n");
      out.write("                <th>Location</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

            
             
            Statement stmt = con.createStatement();
            ResultSet rss =stmt.executeQuery("select * from data where location='"+loc+"' and app='"+app+"'");
            while(rss.next())
                               {
                     String passwordToHash = rss.getString("tweet_text");
        String generatedPassword = null;
        try {
            // Create MessageDigest instance for MD5
            MessageDigest md = MessageDigest.getInstance("MD5");
            //Add password bytes to digest
            md.update(passwordToHash.getBytes());
            //Get the hash's bytes
            byte[] bytes = md.digest();
            //This bytes[] has bytes in decimal format;
            //Convert it to hexadecimal format
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++)
            {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            //Get complete hashed password in hex format
            generatedPassword = sb.toString();
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(rss.getString("full_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(generatedPassword);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rss.getString("tweet_id"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rss.getString("app"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rss.getString("location"));
      out.write("</td>\n");
      out.write("                ");

                               }
                
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
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
