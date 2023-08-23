<%@page import="java.sql.*" %>
<%@include file="Connect.jsp" %>

<%
    
String name=request.getParameter("name");
            String uname=request.getParameter("uname");
            String pass=request.getParameter("password");
            String mail=request.getParameter("email");
            String ph=request.getParameter("mobile");
            String qua=request.getParameter("qua");
      
          Statement st=con.createStatement();
           int i=st.executeUpdate("insert into datareceiver (username,name,password,mail,phoneno,qualification)values('"+uname+"','"+name+"','"+pass+"','"+mail+"','"+ph+"','"+qua+"')");
          con.close();
           if(i!=0){
               %>
              <script>
                   
                   window.alert("User Registration Success");
                   window.location.assign("PhrUser.jsp");
               </script>
              <%
               
           }
           else{
               
               %>
               <script>
                   
                   window.alert("Pls Check the Registration");
                   window.location.assign("PhrUserRegistration.jsp");
               </script>
               <%

           }
%>