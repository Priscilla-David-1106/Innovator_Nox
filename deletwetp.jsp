<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PPDM - Twitter</title>
    </head>
    <body>
       <%
       String d = request.getParameter("d");
       session.setAttribute("d", d);
       response.sendRedirect("enterp.jsp");
       %>
    </body>
</html>