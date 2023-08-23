<%@page import="java.io.ByteArrayInputStream"%>
<%@include file="Connect.jsp"%>
<%
    
  String fid=request.getParameter("fid");
  int skey=Integer.parseInt(request.getParameter("skey"));
  String sql="select * from files where id="+fid;
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery(sql);

  if(rs.next())
  {
      String kr=rs.getString("keyrequest");
      if(kr.equalsIgnoreCase("accepted"))
      {
          int sk=rs.getInt("skey");
          if(sk==skey)
          {
  String filename = rs.getString("file_name"); 
  String filepath = "e:\\"; 
  response.setContentType("APPLICATION/OCTET-STREAM"); 
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 

  //java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
  byte buf[]=rs.getString("file").getBytes();
  ByteArrayInputStream bai=new ByteArrayInputStream(buf);
  int i; 
  while ((i=bai.read()) != -1) {
    out.write(i); 
  } 
  bai.close(); 
  }else
      {
          %>
          <script>
           window.alert("Key not Match");
           window.alert("DataUserHome.jsp");
           </script>
          <%
      }
}
      else
      {
          %>
          <script>
           window.alert("Request is not Accepted By Key Server");
           window.alert("DataUserHome.jsp");
           </script>
          <%
      }
  }
%> 