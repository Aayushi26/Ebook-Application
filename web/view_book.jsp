<%@page import="com.ebook.model.Book"%>
<%@page import="com.ebook.dao.BookDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.ebook.model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ebook.dao.CategoryDAO"%>
<!DOCTYPE HTML>
<!--
	Introspect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
 <head>
  <title>Introspect by TEMPLATED</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
  <link rel="stylesheet" href="assets/css/main.css" />
 </head>
 <body>
  <%
     response.setHeader("Cache-Control", "No-Store");
     Object user = session.getAttribute("current_user");
     if(user != null)
     {
  %>   

     <%@include file="admin_dashboard_header.jsp" %>
  
  <a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>
  <!-- Banner -->
  <section id="banner">
    <div class="inner">
      <h1>Introspect: <span>A free + fully responsive<br />
          site template by TEMPLATED</span>
      </h1>
      <ul class="actions">
	<li><a href="#" class="button alt">Get Started</a></li>
      </ul>
    </div>
  </section>
  <!-- Footer -->
  <section id="footer">
    <div class="inner">
      <header>
	<h2>Add Book Here..</h2>
      </header>
         
        
        <table style="width: 100%;" border="1">
          <%
            ArrayList<Book>al =  BookDAO.getAllBooks();
            Iterator<Book>itr = al.iterator();
            while(itr.hasNext())
            {
               Book b = itr.next();
               %>
               <tr>
                   <td>
                        <a href="pdf_file/<%=b.getFile_name()%>" download> 
                         <img src="cover_photo/<%=b.getCover_photo()%>"/>
                        </a>
                       </br>
                       <b>Name :<%=b.getB_name()%></br>
                       Description :<%=b.getDescription()%>
                       </b>
                    </td>
                <%
                  if(itr.hasNext())
                  {
                    b = itr.next();
                    %>
                      <td>
                          <a href="pdf_file/<%=b.getFile_name()%>" download>
                           <img src="cover_photo/<%=b.getCover_photo()%>"/>
                       </a>
                           </br>
                       <b>Name :<%=b.getB_name()%></br>
                       Description :<%=b.getDescription()%>
                       </b>
                       </td>
                    
                    <%
                  }
                %>
               </tr>
               
               <%
            }
          %>     
        </table>
       
      <div class="copyright">
	&copy; Designed By: Batch .10-12 <a href="#">More Info</a>
      </div>
    </div>
   </section>
   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/skel.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

</body>
<%
  }
 else
   response.sendRedirect("index.jsp");
%>
</html>