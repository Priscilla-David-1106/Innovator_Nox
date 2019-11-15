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
String d = (String)session.getAttribute("d");
Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
        Statement stmt = con.createStatement();
ResultSet rss = stmt.executeQuery("select * from data where full_name='"+d+"' and screen_name='"+otp+"'");
if(rss.next())
{
Statement smt = con.createStatement();
smt.executeUpdate("delete from data where full_name='"+d+"'");
response.sendRedirect("newtweet.jsp");
} 
else
{
    response.sendRedirect("eotp.jsp");
}                     
%>
    </body>
</html>
