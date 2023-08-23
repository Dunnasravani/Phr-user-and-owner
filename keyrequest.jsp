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
            String fid=request.getParameter("id");
            String uid=request.getParameter("uid");
            
            String sql="insert into keyrequest(datareceiver,fid) values('"+uid+"',"+fid+")";
            Statement st=con.createStatement();
            st.executeUpdate(sql);
            String sql1="update files set keyrequest='yes' where id="+fid;
            Statement st1=con.createStatement();
            st1.executeUpdate(sql1);
            %>
            <script>
                window.alert("key Request is sent");
                window.location.assign('ViewData.jsp');
                </script>
    </body>
</html>
