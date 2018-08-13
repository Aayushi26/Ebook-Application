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
        <form method="post" enctype="multipart/form-data" action="add_book_task.jsp">  
        <table style="width: 50%;">
            <tr>
                <td>Book Category :</td>
                <td>
                    <select name="c_id">
                      <%
                         ArrayList<Category>al = CategoryDAO.getAllBookCategory();
                         Iterator<Category>itr = al.iterator();
                         while(itr.hasNext())
                         {
                             Category c = itr.next();
                      %>
                      <option value="<%=c.getId()%>"><%=c.getC_name()%></option>
                      <%
                        }
                      %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Name :</td>
                <td><input type="text" name="b_name"></td>
            </tr>
            <tr>
                <td>Author :</td>
                <td><input type="text" name="author"></td>
            </tr>
            <tr>
                <td>Description :</td>
                <td>
                    <textarea name="description" rows="3" cols="5"></textarea>
                </td>
            </tr>
            <tr>
                <td>Cover Photo</td>
                <td>
                    <input type="file" name="cover_photo">
                </td>
            </tr>
            <tr>
                <td>Pdf File</td>
                <td>
                    <input type="file" name="pdf_file">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="ADD">
                </td>
            </tr>
        </table>
       </form>             
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