<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.KeyPairGenerator"%>
<%@page import="java.security.Signature"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="java.security.KeyPair"%>
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
</style>
<script type='text/javascript'>
var isCtrl = false;
document.onkeyup=function(e)
{
if(e.which == 17)
isCtrl=false;
}
document.onkeydown=function(e)
{
if(e.which == 123)
isCtrl=true;
if (((e.which == 85) || (e.which == 65) || (e.which == 88) || (e.which == 67) || (e.which == 86) || (e.which == 2) || (e.which == 3) || (e.which == 123) || (e.which == 83)) && isCtrl == true)
{
alert('This function is disabled');
return false;
}
}
var isNS = (navigator.appName == "Netscape") ? 1 : 0;
if(navigator.appName == "Netscape") document.captureEvents(Event.MOUSEDOWN||Event.MOUSEUP);
function mischandler(){
    alert('This function is disabled');
return false;
}
function mousehandler(e){
var myevent = (isNS) ? e : event;
var eventbutton = (isNS) ? myevent.which : myevent.button;
if((eventbutton==2)||(eventbutton==3)) return false;
}
document.oncontextmenu = mischandler;
document.onmousedown = mousehandler;
document.onmouseup = mousehandler;
function killCopy(e){
return false
}
function reEnable(){
return true
}
document.onselectstart=new Function ("return false")
if (window.sidebar){
document.onmousedown=killCopy
document.onclick=reEnable
}
</script>
    </head>
    <body>
        <div class="header">
            <p><b>Guarding the privacy zealously!</b></p>
        </div>
        <div class="menu">
            <ul class="nav">
                <li><a href="cloudhome.jsp">Home</a></li>
                <li><a class="active" href="records.jsp">APP</a></li>
                <li><a href="userlist.jsp">LOC</a></li>
                <li><a href="report2.jsp">APP-LOC</a></li>                
                <li><a href="index.jsp">Log Out</a></li>
            </ul>
        </div>
        
        <div class="content">
            <h2 align="center"><font color="#6c5ce7">Search Result</font></h2> 
            <form action="records.jsp" method="post">
            <h3 align="center">Application&nbsp;&nbsp;&nbsp;<select name="app" >
                     <option></option> 
                     <%
                     String app = "";
                     //String app = "Twitter for iPhone";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
            Statement stmt = con.createStatement();
            ResultSet rss =stmt.executeQuery("SELECT DISTINCT app FROM data");
            while(rss.next())
                               {
            %>      
            <option><%=rss.getString("app")%></option> 
                     <%
                     }
           %>
                </select></h3>
                <h3 align="center"><input type="submit" value="search" /></h3>    
          </form>
            <br>
             <%
        app= request.getParameter("app");
        Class.forName("com.mysql.jdbc.Driver");
            //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tweet","root","root");
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery("SELECT COUNT(*) FROM data where app='"+app+"'");
            while(rs.next()){
                 String a = rs.getString(1);
        %>
        <h3><%=app%></h3>
        <h4>No.Of Rows : &nbsp;&nbsp;&nbsp;<%=a%></h4>
        <%
               }
            
        %>
            <h2 align="center"><font color="#6c5ce7">Tweet Details</font></h2> 
            <table align="center">
                <tr>
                    <th>Tweet Id</th>
                    <th>Date</th>
                    <th>Tweet</th>
                    <th>Application</th>
                    <th>Full_Name</th>    
                </tr>
                <%
Statement stt = con.createStatement();
ResultSet rsr = stt.executeQuery("select * from data where app='"+app+"'");
while(rsr.next())
{
      //String passwordToHash = rsr.getString("tweet_text");
        String plainText = rsr.getString("tweet_text");
        KeyGenerator generator = KeyGenerator.getInstance("AES");
        generator.init(128); // The AES key size in number of bits
        SecretKey secKey = generator.generateKey();
        Cipher aesCipher = Cipher.getInstance("AES");
        aesCipher.init(Cipher.ENCRYPT_MODE, secKey);
        byte[] byteCipherText = aesCipher.doFinal(plainText.getBytes()); 
        String aaa = byteCipherText.toString();
%>
                <tr>
                    <td><%=rsr.getString("tweet_id")%></td>
                    <td><%=rsr.getString("date")%></td>
                    <td><%=aaa%></td>
                    <td><%=rsr.getString("app")%></td>
                    <td><%=rsr.getString("full_name")%></td>        
                </tr>
                <%
                               }
                %>
            </table>   
        </div>
            <br /><br /><br />
        <div class="footer">
            <br>
            <h3 align="center"><font color="white">Zone of Privacy</font></h3>
        </div>
    </body>
</html>
