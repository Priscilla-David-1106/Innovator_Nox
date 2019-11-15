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
        String a = (String)session.getAttribute("mail"); 
String twt = (String)session.getAttribute("twet"); 
String pass = request.getParameter("otp");
String dt = (String)session.getAttribute("dt");
Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
  ResultSet rss = stmt.executeQuery("select * from data where full_name='"+a+"' and screen_name='"+pass+"'");
  if(rss.next())
           {
      Statement smt = con.createStatement();
      smt.executeUpdate("update data set tweet_text='"+twt+"' where full_name='"+a+"' and screen_name='"+pass+"' and date='"+dt+"'");
      response.sendRedirect("newtweet.jsp");
  }
  else
           {
     // PrintWriter out = response.getWriter();
               out.println("<script type=\"text/javascript\">");
   out.println("alert('Incorrect Password');");
   out.println("location='newtweet.jsp';");
   out.println("</script>");
  }
%>
    </body>
</html>