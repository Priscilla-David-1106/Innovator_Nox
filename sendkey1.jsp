<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>>PPDM - Twitter</title>
    </head>
    <body>
        <%      
        String tt= request.getParameter("twet");
session.setAttribute("twet", tt);
String dt = request.getParameter("dt");
session.setAttribute("dt", dt);
response.sendRedirect("eotp1.jsp");  
        %>
    </body>
</html>