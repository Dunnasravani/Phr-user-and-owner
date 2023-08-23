<%@include file="Connect.jsp" %>
<html lang="en">
<head>

     <title>SeSPHR</title>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/templatemo-style.css">

</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="#" class="navbar-brand">Known</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                         <li><a href="KeyServerHome" class="smoothScroll">Home</a></li>
                        <li><a href="ViewUserskeyServer.jsp" class="smoothScroll">View All Users</a></li>
                         <li><a href="ViewDataOwnerKeyServer.jsp" class="smoothScroll">View All DataOwners</a></li>
                         <li><a href="ViewKeyRequest.jsp" class="smoothScroll">View KeyRequest</a></li>
                         <li><a href="index.html" class="smoothScroll">Logout</a></li>
                         
                         
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="#"><i class="fa fa-phone"></i> +65 2244 1100</a></li>
                    </ul>
               </div>

          </div>
     </section>


     <!-- HOME -->
     <section id="home">
          <div class="row">

                    <div class="owl-carousel owl-theme home-slider">
                         <div class="item item-first">
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-6 col-sm-12">
                                             <h1>A Methodology For Secure Sharing Of Personal Health Records In The Cloud</h1>
                                             <h3></h3>
                                             <a href="#feature" class="section-btn btn btn-default smoothScroll">Discover more</a>
                                        </div>
                                   </div>
                              </div>
                         </div>

                         <div class="item item-second">
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-6 col-sm-12">
                                             <h1>A Methodology For Secure Sharing Of Personal Health Records In The Cloud</h1>
                                             <h3></h3>
                                             <a href="#courses" class="section-btn btn btn-default smoothScroll">Take a course</a>
                                        </div>
                                   </div>
                              </div>
                         </div>

                         <div class="item item-third">
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-6 col-sm-12">
                                             <h1>A Methodology For Secure Sharing Of Personal Health Records In The Cloud</h1>
                                             <h3>Nam eget sapien vel nibh euismod vulputate in vel nibh. Quisque eu ex eu urna venenatis sollicitudin ut at libero. Visit <a rel="nofollow" href="https://www.facebook.com/templatemo">templatemo</a> page.</h3>
                                             <a href="#contact" class="section-btn btn btn-default smoothScroll">Let's chat</a>
                                        </div>
                                   </div>
                              </div>
                         </div>
                    </div>
          </div>
     </section>


     <!-- FEATURE -->
     <section id="feature">
          <div class="container">
               <div class="row">
                   <table align="center" border="1">
                       <tr>
                   <%
                       Statement st=con.createStatement();
                       ResultSet rs=st.executeQuery("select * from dataowner");
                       ResultSetMetaData rsmd=rs.getMetaData();
                       int cc=rsmd.getColumnCount();
                       
                       for(int i=1;i<=cc;i++)
                       {
                           %>
                           <th><%=rsmd.getColumnLabel(i)  %></th>
                           <%
                       }
                       %>
                       </tr>
                       <%
                           while(rs.next())
                           {
                               out.println("<tr>");
                               for(int i=1;i<=cc;i++)
                               {
                                %>
                           <td><%=rs.getString(i)  %></td>
                           <%
                       }
                        %>
                        <td><a href="authorizeowner.jsp?id=<%=rs.getString(1)%>">Authorize</a></td></tr>
                        <%
                           }
                       %>
                    </table>
                    

                    

               </div>
          </div>
     </section>




     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>