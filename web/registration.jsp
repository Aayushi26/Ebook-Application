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
 <script>
     function removeMessage()
     {
       
        document.getElementById("error1").innerHTML = ""; 
     }
     function removeMessage2()
     {
       
        document.getElementById("error2").innerHTML = ""; 
     }
     function removeMessage3()
     {
       
        document.getElementById("error3").innerHTML = ""; 
     }
     function removeMessage4()
     {
       
        document.getElementById("error4").innerHTML = ""; 
     }
     function removeMessage5()
     {
       
        document.getElementById("error5").innerHTML = ""; 
     }
 </script>
 <body>

  <!-- Header -->
  <header id="header">
    <div class="inner">
       
       <nav id="nav">
          <a href="#">Home</a>
          <a href="">Login</a>
          <a href="#">About Us</a>
          <a href="#">Contact Us</a>
          <a href="registration.jsp">New User ?</a>
       </nav>
    </div>
  </header>
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
        <%
          Object error1 =  request.getAttribute("error1");
          Object error2 =  request.getAttribute("error2");
          Object error3 =  request.getAttribute("error3");
          Object error4 =  request.getAttribute("error4");
          Object error5 =  request.getAttribute("error5");
        
        %>
      <form method="post" action="registration_task.jsp">
          <table>
              <tr>
                  <td>
                      User Name :
                  </td>
                  <td>
                     <%
                        if(error1 != null)
                        {
                     %> 
                        <span id="error1">
                           <b> <%=error1%> </b> 
                        </span>
                      <%
                         }
                      %>
                      <input type="text" name="username" id="username" onkeypress="removeMessage()"/>
                  </td>
              </tr>
              <tr>
                  <td>
                      Email :
                  </td>
                  <td>
                     <%
                        if(error2 != null)
                        {
                     %> 
                        <span id="error2" >
                            <b> <%=error2%> </b>  
                        </span>
                      <%
                         }
                      %>
                      <input type="email" name="email" onkeypress="removeMessage2()"/>
                  </td>
              </tr>
               <tr>
                  <td>
                      Password :
                  </td>
                  <td>
                     <%
                        if(error3 != null)
                        {
                     %> 
                        <span id="error3">
                            <b> <%=error3%> </b>   
                        </span>
                      <%
                         }
                      %>
                      <input type="password" name="password" onkeypress="removeMessage3()"/>
                  </td>
              </tr>
               <tr>
                  <td>
                      Mobile :
                  </td>
                  <td>
                     <%
                        if(error4 != null)
                        {
                     %> 
                        <span id="error4">
                            <b> <%=error4%> </b>   
                        </span>
                      <%
                         }
                      %>
                      <input type="text" name="mobile" onkeypress="removeMessage4()"/>
                  </td>
              </tr>
               <tr>
                  <td>
                      Age :
                  </td>
                  <td>
                     <%
                        if(error5 != null)
                        {
                     %> 
                        <span id="error5">
                            <b> <%=error5%> </b>   
                        </span>
                      <%
                         }
                      %>
                      <input type="text" name="age" onkeypress="removeMessage5()"/>
                  </td>
              </tr>
              <tr>
                  <td>
                      
                  </td>
                  <td>
                      <input type="submit" value="Register"/>
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
</html>