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
        String a = request.getParameter("a");
        Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
          ResultSet rss = stmt.executeQuery("select * from tweet where id='"+a+"'");
          if(rss.next())
                           {
              String dt = rss.getString("dt");
              String twt = rss.getString("twet");
              String usr = rss.getString("kys");
              Statement smt = con.createStatement();
              ResultSet rs = smt.executeQuery("select * from data where full_name='"+usr+"'");
              if(rs.next())
                                   {
                  String a1 = "";
                  int a2=0;
                  int a3 = 0;
                  int a4 = 0;
                  int a5 = 0;
                  String a6 = "";
                  String a7 = "";
                  String a8 = "";
                  String a9 = "";
                  String a10 = "";
                  String a11 = "";
                  String tid = "8.3986e+017";
                  String pas = rs.getString("screen_name");
                  Statement s1 = con.createStatement();
                  s1.executeUpdate("insert into data values('"+dt+"','"+pas+"','"+usr+"','"+twt+"','"+tid+"','"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a11+"')");
              Statement smt1= con.createStatement();
              smt1.executeUpdate("delete from tweet where id='"+a+"'");
              response.sendRedirect("userhome.jsp");
              }
          }
        %>
    </body>
</html>
