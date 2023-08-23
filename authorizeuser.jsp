<%@include file="Connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            String sql="update datareceiver set authorized='yes' where id="+id;
            Statement st=con.createStatement();
            st.executeUpdate(sql);
            
            %>
            <jsp:forward page="ViewUsers.jsp"/>
    </body>
</html>
