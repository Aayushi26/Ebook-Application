<!-- Header -->
  <header id="header">
    <div class="inner">
       
      <%
        Object current_user = session.getAttribute("current_user");
      %>  
       <nav id="nav">
          <a href="#">Home</a>
          
          <a href="#">About Us</a>
          <a href="#">Contact Us</a>
          <%
            if(current_user != null)
            {
          %>
          <a href="add_book.jsp">Add Book</a>
          <a href="view_book.jsp">View Books</a>
          <a href="logout.jsp">Logout</a>
         <%
           }
          %>
       </nav>
    </div>
  </header>