<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@page import="java.sql.*;" %>
<%
String dCase = "1357924680864323876538765873563";
String uCase = "26846829784668408736587346586867835";
Random r=new  Random();  
String otp = "";
while (otp.length () != 8)
{
int rPick = r.nextInt(2);
if (rPick == 0){
int spot = r.nextInt(26);
otp += dCase.charAt(spot);
} 
else if (rPick == 1) {
int spot = r.nextInt (26);
otp += uCase.charAt(spot);
}
}
// stmt.executeUpdate("update tweet set twet='"+twet+"' where id='"+id+"'");
//Creating a result for getting status that messsage is delivered or not!
String result;
String a = (String)session.getAttribute("mails"); 
final String to = a;
final String subject = "Twitter";
final String messg = "your key is : "+otp;
//session.setAttribute("otp", otp);
final String from = "TwitterAuthenticatedUser@gmail.com";
final String pass = "genuineuser";
String host = "smtp.gmail.com";
Properties props = new Properties();
props.put("mail.smtp.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.user", from);
props.put("mail.password", pass);
props.put("mail.port", "465");
Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
@Override
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(from, pass);
}
});
    try {
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO,
        new InternetAddress(to));
        message.setSubject(subject);
        message.setText(messg);
        Transport.send(message);
        result = " OTP enclosed mail sent successfully....";
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send mail....";
    }
     
%>
<%
     String mil = (String)session.getAttribute("mails"); 
        Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapreduce","root","root");
          Statement stmt = con.createStatement();
          stmt.executeUpdate("update customer set Password='"+otp+"' where Mail='"+mil+"'");
response.sendRedirect("eotp.jsp");
%>
