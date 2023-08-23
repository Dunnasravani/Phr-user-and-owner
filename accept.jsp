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
            
            String sql1="Select * from datareceiver where id=(Select datareceiver from keyrequest where id="+fid+")";
            String sql2="Select * from files where id=(Select fid from  keyrequest where id="+fid+")";
            
            System.out.println("Sql1 "+sql1);
            System.out.println("Sql2 "+sql2);
            Statement st1=con.createStatement();
            ResultSet rs1=st1.executeQuery(sql1);
            
            Statement st2=con.createStatement();
            ResultSet rs2=st2.executeQuery(sql2);
            rs1.next();
            String email=rs1.getString("mail");
            rs2.next();
            String fname=rs2.getString("file_name");
            String key=rs2.getString("skey");
            System.out.println("Key is "+key);
            String sql3="update files set keyrequest='accepted' where id="+rs2.getInt("id");
            Statement st3=con.createStatement();
            st3.executeUpdate(sql3);
            %>
            <script>
                window.alert("key Request is Accepted");
                window.location.assign('KeyServerHome.jsp');
                </script>
    </body>
</html>
