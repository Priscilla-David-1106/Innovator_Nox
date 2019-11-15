<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
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
        <title>PPDM - Twitter</title>
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
                <li><a class="active" href="userlist.jsp">LOC</a></li>
                <li><a href="report2.jsp">APP-LOC</a></li>
                <li><a href="index.jsp">Log Out</a></li>
            </ul>
        </div>
        <div class="content">
            <h2 align="center"><font color="#6c5ce7">Search Result</font></h2> 
            <form action="userlist.jsp" method="post">
            <h3 align="center">Location&nbsp;&nbsp;&nbsp;<select name="loc" >
                     <option></option> 
                     <%
                     String loc = "";
                     //String app = "Twitter for iPhone";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
            Statement stmt = con.createStatement();
            ResultSet rss =stmt.executeQuery("SELECT DISTINCT location FROM data");
            while(rss.next())
                               {
            %>      
            <option><%=rss.getString("location")%></option> 
                     <%
                     }
           %>
                </select></h3>
                <h3 align="center"><input type="submit" value="search" /></h3>   
          </form>
            <br>
             <%
        loc= request.getParameter("loc");
        Class.forName("com.mysql.jdbc.Driver");
            //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tweet","root","root");
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery("SELECT COUNT(*) FROM data where location='"+loc+"'");
            while(rs.next()){
                 String a = rs.getString(1);
        %>
        <h3><%=loc%></h3>
        <h4>No.Of Rows : &nbsp;&nbsp;&nbsp;<%=a%></h4>
        <%
               }
        %>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr>
                <th>Full Name</th>
                <th>Tweet </th>
                <th>Tweet Id</th>
                <th>Application</th>
                <th>Location</th>
            </tr>
            <% 
            Statement smt1 = con.createStatement();
            ResultSet rsss =smt1.executeQuery("select * from data where location='"+loc+"'");
            while(rsss.next())
                               {
                String plainText = rsss.getString("tweet_text");
        KeyGenerator generator = KeyGenerator.getInstance("AES");
        generator.init(128); // The AES key size in number of bits
        SecretKey secKey = generator.generateKey();
        Cipher aesCipher = Cipher.getInstance("AES");
        aesCipher.init(Cipher.ENCRYPT_MODE, secKey);
       byte[] byteCipherText = aesCipher.doFinal(plainText.getBytes()); 
        String aaa = byteCipherText.toString();
            %>
            <tr>
                <td><%=rsss.getString("full_name")%></td>
                <td><%=aaa%></td>
                <td><%=rsss.getString("tweet_id")%></td>
                <td><%=rsss.getString("app")%></td>
                <td><%=rsss.getString("location")%></td>
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
