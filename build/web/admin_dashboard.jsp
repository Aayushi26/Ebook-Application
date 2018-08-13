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
	<h2>Get in Touch</h2>
      </header>
      <form method="post" action="login.jsp">
          <select name="userType">
              <option value="User">User</option>
              <option value="Admin">Admin</option>
          </select>
        <div class="field half first">
	  <label for="email">Name</label>
          <input type="email" name="email" id="name" placeholder="USERNAME" />
	</div>
	<div class="field half">
	   <label for="password">Password</label>
           <input type="password" name="password" id="password" placeholder="PASSWORD"/>
	</div>
	
	<ul class="actions">
	   <li><input type="submit" value="Login" class="alt" /></li>
	</ul>
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