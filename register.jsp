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
                color : #00b894;
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
                
            </ul>
        </div>
        <div class="content">
            <h3 align="center"><font color="#6c5ce7">Register</font></h3>
            <form action="RegServlet" method="post">
            <table align="center" cellpadding="10" cellspacing="10">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="Name" /></td>
                    <td>DOB</td>
                    <td><input type="text" name="Date of Birth" /></td>
                </tr> 
                <tr>
                    <td>Mobile</td>
                    <td><input type="text" name="Mobile Number" /></td>
                    <td>City</td>
                    <td><input type="text" name="City" /></td>
                </tr> 
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="Residential Address" /></td>
                    <td>Pincode</td>
                    <td><input type="text" name="Pincode" /></td>
                </tr> 
                <tr>
                    <td>E Mail Id</td>
                    <td><input type="text" name="Mail Id" /></td>
                    <td>Password</td>
                    <td><input type="password" name="Password" /></td>
                </tr> 
                <tr>
                    <td></td>
                    <td><input type="reset" value="Clear" /></td>
                    <td></td>
                    <td><input type="submit" value="Submit" /></td>
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
