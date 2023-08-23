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
    
if(email.equalsIgnoreCase("cloud") && pwd.equalsIgnoreCase("cloud"))
{
    %>
    <script>
        
        window.alert("Login Success...");
        window.location.assign("CloudHome.jsp");
    </script>
    <%

}
else
{
    
    %>
    <script>
        window.alert("Username/password not Match");
        window.location.assign("CloudLogin.jsp");
        
    </script>
             
    
    <%
}
    
    %>
    </body>
</html>
