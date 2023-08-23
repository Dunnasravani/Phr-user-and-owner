<%@page import="java.sql.*" %>
<%@include file="Connect.jsp" %>

<%
    
            String id=session.getAttribute("id").toString();
            String name=request.getParameter("name");
            String uname=request.getParameter("age");
            String pass=request.getParameter("sym");
            String mail=request.getParameter("dis");
            String ph=request.getParameter("mac");
            
          //Connection con= Dbconn.getConnection();
          Statement st=con.createStatement();
          String sql="insert into symtoms (name,age,symtoms,disease,mac,pid)values('"+name+"','"+uname+"','"+pass+"','"+mail+"','"+ph+"','"+id+"')";
          int i=st.executeUpdate(sql);
          //con.close();
           if(i!=0){
               Statement st1=con.createStatement();
               String sql1="select max(tid) from symtoms where pid="+id;
               ResultSet rs=st1.executeQuery(sql1);
               rs.next();
%>
              <script>
                   
                   window.alert("Your Token id is <%=rs.getString(1)%>");
                   window.location.assign("DataOwnerHome.jsp");
               </script>
              <%
               
           }
           else{
               
               %>
               <script>
                   
                   window.alert("Pls Check the Registration");
                   window.location.assign("DataOwnerHome.jsp");
               </script>
               <%

           }
%>