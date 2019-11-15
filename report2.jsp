<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.sql.*;" %>
<%@page import="javax.crypto.Cipher" %>
<%@page import="javax.crypto.KeyGenerator" %>
<%@page import="javax.crypto.SecretKey" %>
<%@page import="javax.xml.bind.DatatypeConverter" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PPDM-Twitter</title>
        <link rel="stylesheet" href="css/style.css" >
        <style>
table {
  border-collapse: collapse;
  width: 75%;
}
th, td {
  text-align: left;
  padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
th {
  background-color: #e67e22;
  color: white;
}
select
{
    height: 30px;
    width: 250px;
}
</style>
    </head>
    <body>
        <div class="header">
            <p><b>Guarding the privacy zealously!</b></p>
        </div>
        <div class="menu">
            <ul class="nav">
                <li><a href="cloudhome.jsp">Home</a></li>
                <li><a href="records.jsp">APP</a></li>
                <li><a href="userlist.jsp">LOC</a></li>
                <li><a class="active" href="report2.jsp">APP-LOC</a></li>
                <li><a href="index.jsp">Log Out</a></li>
            </ul>
        </div>
        <div class="content">
            <h2 align="center"><font color="#6c5ce7">Search Result</font></h2> 
           <form action="report2.jsp" method="post">
               <h3 align="center">Location &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="loc">
                    <%
                    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
            Statement ss = con.createStatement();
            ResultSet rr =ss.executeQuery("SELECT DISTINCT location FROM data");
            while(rr.next())
                               {
                    %>
                    <option><%=rr.getString("location")%></option>
                    <%
                                       }
                    %>
                </select></h3>
                <h3 align="center">Application &nbsp;&nbsp;&nbsp;<select name="app">
                    <%   
            Statement sss = con.createStatement();
            ResultSet rrr =sss.executeQuery("SELECT DISTINCT app FROM data");
            while(rrr.next())
                               {
                    %>
                    <option><%=rrr.getString("app")%></option>
                    <%
                                       }
                    %>
                </select></h3>
        <h3 align="center"><input type="submit" value="search" /></h3>
        </form>
        <%
        String loc= request.getParameter("loc");
       String app = request.getParameter("app");
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery("SELECT COUNT(*) FROM data where location='"+loc+"' and app='"+app+"'");
            while(rs.next()){
                String a = rs.getString(1);
        %>
        <h4>No.Of Rows : &nbsp;&nbsp;&nbsp;<%=a%></h4>
        <%
               }
        %>
        <h4>Location : <%=loc%></h4>
        <h4>Application : <%=app%></h4>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr>
                <th>Full Name</th>
                <th>Tweet </th>
                <th>Tweet Id</th>
                <th>Application</th>
                <th>Location</th>
            </tr>
            <% 
            Statement stmt = con.createStatement();
            ResultSet rss =stmt.executeQuery("select * from data where location='"+loc+"' and app='"+app+"'");
            while(rss.next())
                               {
                    String plainText = rss.getString("tweet_text");
        KeyGenerator generator = KeyGenerator.getInstance("AES");
        generator.init(128); // The AES key size in number of bits
        SecretKey secKey = generator.generateKey();
        Cipher aesCipher = Cipher.getInstance("AES");
        aesCipher.init(Cipher.ENCRYPT_MODE, secKey);
       byte[] byteCipherText = aesCipher.doFinal(plainText.getBytes()); 
        String aaa = byteCipherText.toString();
            %>
            <tr>
                <td><%=rss.getString("full_name")%></td>
                <td><%=aaa%></td>
                <td><%=rss.getString("tweet_id")%></td>
                <td><%=rss.getString("app")%></td>
                <td><%=rss.getString("location")%></td>
                <%
                               }
                %>
            </tr>
        </table>
        </div>
            <br /><br /><br />
        <div class="footer">
            <br>
            <h3 align="center"><font color="white">Zone of Privacy</font></h3>
        </div>
    </body>
</html>
