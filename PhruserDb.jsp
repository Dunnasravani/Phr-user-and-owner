
<%@include file="Connect.jsp" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String uname=request.getParameter("username");
           String pass=request.getParameter("password");
           
           Statement st=con.createStatement();
           String sql="select * from datareceiver where username='"+uname+"' AND password='"+pass+"'";
           System.out.println("sql "+sql);
           ResultSet rs=st.executeQuery(sql);
           if(rs.next())
           {
               if(rs.getString("authorized").equalsIgnoreCase("yes"))
               {
                String name=rs.getString("username");
                session.setAttribute("email", rs.getString("mail"));
                session.setAttribute("id", rs.getString("id"));
                session.setAttribute("uname", name);
                
                %>
               <script>
                   
                   window.alert("PHR User Login Success");
                   window.location.assign("PhrUserHome.jsp");
               </script>
               <%
                //response.sendRedirect("DataUserHome.jsp");
               }
               else{
               
               %>
               <script>
                   
                   window.alert("You Are Not Authorized");
                   window.location.assign("PhrUser.jsp");
               </script>
               <%
           }
           }
           else{
               
               %>
               <script>
                   
                   window.alert("Username/Password Not Match");
                   window.location.assign("PhrUser.jsp");
               </script>
               <%
           } 
       
              %>
    </body>
</html>
