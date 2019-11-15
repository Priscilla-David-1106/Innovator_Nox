<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PPDM - Twitter</title>
        <link rel="stylesheet" href="css/style.css" >    
    </head>
    <body>
        <div class="header">
            <p><b>Guarding the privacy zealously!</b></p>
        </div>
        <div class="menu">
            <ul class="nav">
                <li><a class="active" href="userhome.jsp">Home</a></li>
                <li><a href="tweets.jsp">Twitter</a></li>
                <li><a href="newtweet.jsp">My tweet</a></li>
                <li><a href="index.jsp">Log Out</a></li>
            </ul>
        </div>
        <%
String a = (String)session.getAttribute("mail");        
%>
        <div class="content">
            <h4>Hello &nbsp;&nbsp;<font color="#6c5ce7"><%=a%></font></h4>
            <table border="1" align="center" cellpadding="10" cellspacing="10">
                <tr>
                    <th>For you</th>
                    <th>Get started</th>
                    <th>Accept</th>
                    <th>Decline</th>    
                </tr>
                <%
                 Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
          ResultSet rss = stmt.executeQuery("select * from tweet where mail='"+a+"'");
          while(rss.next())
                           {
                %>
                <tr>
                    <td><%=rss.getString("kys")%></td>
                    <td><%=rss.getString("twet")%></td>
                    <td><a href="share1.jsp?a=<%=rss.getString("id")%>">Accept</a></td>
                    <td><a href="share2.jsp?a=<%=rss.getString("id")%>">Decline</a></td>    
                </tr>
                <%
                               }
                %>
            </table>
            <br /><br /><br /><br /><br /><br />
        </div>
        <div class="footer">
            <br>
            <h3 align="center"><font color="white">Zone of Privacy</font></h3>
        </div>
    </body>
</html>
