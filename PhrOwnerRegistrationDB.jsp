<%@page import="java.sql.*" %>
<%@include file="Connect.jsp" %>

<%
    
String name=request.getParameter("name");
            String uname=request.getParameter("uname");
            String pass=request.getParameter("password");
            String mail=request.getParameter("email");
            String ph=request.getParameter("mobile");
            String qua=request.getParameter("qua");
          //Connection con= Dbconn.getConnection();
          Statement st=con.createStatement();
           int i=st.executeUpdate("insert into dataowner (username,name,password,mail,phoneno,qualification)values('"+uname+"','"+name+"','"+pass+"','"+mail+"','"+ph+"','"+qua+"')");
          con.close();
           if(i!=0){
               %>
              <script>
                   
                   window.alert("Owner Registration Success");
                   window.location.assign("PhrOwner.jsp");
               </script>
              <%
               
           }
           else{
               
               %>
               <script>
                   
                   window.alert("Pls Check the Registration");
                   window.location.assign("PhrOwnerRegistration.jsp");
               </script>
               <%

           }
%>