<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PPDM - Twitter</title>
    </head>
    <body>
        <%
String otp = request.getParameter("otp"); 
String a = (String)session.getAttribute("mails"); 
 Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
        Statement stmt = con.createStatement();
ResultSet rss = stmt.executeQuery("select * from customer where Mail='"+a+"' and Password='"+otp+"'");
if(rss.next())
{
    response.sendRedirect("userlogin.jsp");
} 
else
{
    response.sendRedirect("eotp.jsp");
}                     
%>
    </body>
</html>
