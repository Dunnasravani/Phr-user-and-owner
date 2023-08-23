<%@page import="java.sql.Statement"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
    String email=request.getParameter("username");
    String pwd=request.getParameter("password");
    
if(email.equalsIgnoreCase("ks") && pwd.equalsIgnoreCase("ks"))
{
    %>
    <script>
        
        window.alert("Login Success...");
        window.location.assign("KeyServerHome.jsp");
    </script>
    <%

}
else
{
    %>
    <script>
        window.alert("Username/password not Match");
        window.location.assign("KeyServerLogin.jsp");
        
    </script>
             
    
    <%
}
    
    %>
    </body>
</html>
