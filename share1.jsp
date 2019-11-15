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
        String aa = "Accepted :)";
        String a = request.getParameter("a");
         Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
          stmt.executeUpdate("update tweet set mail='"+aa+"' where id='"+a+"'");
          response.sendRedirect("userhome.jsp");
        %>
    </body>
</html>
