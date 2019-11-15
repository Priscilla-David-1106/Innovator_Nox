<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PPDM - Twitter</title>
        <link rel="stylesheet" href="css/style.css" >
        <style>
            a
            {
                text-decoration: none;
                color : #6c5ce7;
            }
            </style>
    </head>
    <body>
        <div class="header">
            <p><b>Guarding the privacy zealously!</b></p>
        </div>
        <div class="menu">
            <ul class="nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a class="active" href="userlogin.jsp">User</a></li>
                <li><a href="cloudlogin.jsp">Cloud</a></li>
            </ul>
        </div>
        <div class="content">
            <h3 align="center"><font color="#6c5ce7">Log In</font></h3>
            <form action="LogServlet" method="post">
            <table align="center" cellpadding="10" cellspacing="10">
                <tr>
                <td>
                <input type="text" name="mail" placeholder="User name" />
                </td>
                </tr>
                <tr>
                <td>
                    <input type="password" name="pass" placeholder="Password" />
                </td>
                </tr>
                <tr>
                <td>
                <input type="submit" value="Sign In" />
                </td>
                </tr>     
            </table>
            </form>    
        </div>
        <div class="footer">
            <br>
            <h3 align="center"><font color="white">Zone of Privacy</font></h3>
        </div>
    </body>
</html>
