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
        String a = (String)session.getAttribute("mail");
        String twet = request.getParameter("tweet");
        int n = 0;
        int no = n;
        String kn = ""; 
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	    Date date = new Date();
	    String dd=dateFormat.format(date);
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
          int rs = stmt.executeUpdate("insert into tweet values('"+no+"','"+dd+"','"+twet+"','"+a+"','"+kn+"')");
          if(rs>0){
            response.sendRedirect("newtweet.jsp");}           
%>
    </body>
</html>
