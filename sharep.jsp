<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PPDM - Twitter</title>
    </head>
    <body>
       <%
       String a = request.getParameter("a");
       String aa = (String)session.getAttribute("mail");
       DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
	   Date date = new Date();
	   String dd=dateFormat.format(date);
       int n = 0;
       int no = n;
       Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
          ResultSet rss = stmt.executeQuery("select * from data where full_name='"+a+"'");
          if(rss.next())
          {
              String tt = rss.getString("tweet_text");
              Statement smt = con.createStatement();
              smt.executeUpdate("insert into tweet values('"+no+"','"+dd+"','"+tt+"','"+a+"','"+aa+"')");
               //PrintWriter out = response.getWriter();
               out.println("<script type=\"text/javascript\">");
   out.println("alert('Share....');");
   out.println("location='tweets.jsp';");
   out.println("</script>");
          out.close();
          }
       %>
    </body>
</html>
