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
        <link rel="stylesheet" href="css/style.css" >
       <style>
           .tweet
{
    width: 400px;
    height:auto;
    background: #f5f6fa;
    margin-left: 150px;
    color: #6c5ce7;   
}
textarea{
    border-style: none;
    background: #f5f6fa;
}
  .tweet input[type="submit"]
{
    
  background-color: #6c5ce7; /* Green */
  border: none;
  color: white;
  width:70px;
  font-size: 16px;
}  
.tweet a
{
    text-decoration: none;
    background: white;
    padding: 15px 10px;
}
.tweet a:hover
{
    background: blue;
    color : white;
}
       </style>
       <script type="text/javascript">
function showAlert(){
alert("Sure you want to Delete...");
}
</script>
<script type="text/javascript">
document.getElementById('myButton').onclick = function() {
    document.getElementById('myInput').readOnly = false;
};
</script>
    </head>
    <body>
        <div class="header">
            <p><b>Guarding the privacy zealously!</b></p>
        </div>
        <div class="menu">
            <ul class="nav">
               <li><a href="userhome.jsp">Home</a></li>
                <li><a class="active" href="tweets.jsp">Twitter</a></li>
                <li><a href="newtweet.jsp">My tweet</a></li>
                <li><a href="index.jsp">Log Out</a></li>
            </ul>
        </div>
        <%
String a = (String)session.getAttribute("mail");        
%>
        <div class="content">   
            <h4>Hello &nbsp;&nbsp;<font color="#6c5ce7"><%=a%></font></h4>
           <br />
          <form name="form1" method="post" action="sendkey.jsp">
           <%          
        Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
ResultSet rss = stmt.executeQuery("select * from data");
 while(rss.next())  
{                      
%>
            <div class="tweet">  
                <h4>&nbsp;&nbsp;&nbsp;<font color="red"><%=rss.getString("full_name")%></font>                 
                </h4>
                    <h4>&nbsp;&nbsp;&nbsp;
<font color="black"><%=rss.getString("tweet_text")%></font>
                    </h4>
               <h6>&nbsp;&nbsp;&nbsp;<%=rss.getString("date")%></h6>
               <h4 align="right"><a href="sharep.jsp?a=<%=rss.getString("full_name")%>">Share</a>&nbsp;&nbsp;</h4>
              <br>   
           </div>
               <br>
           <%
}           
%>
          </form>
        </div>
    <br />
        <div class="footer">
            <br>
            <h3 align="center"><font color="white">Zone of Privacy</font></h3>
        </div>
    <script>
function myFunction() {
  window.open("eotp.jsp", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=500,width=300,height=300");
}
</script>
    </body>
</html>
