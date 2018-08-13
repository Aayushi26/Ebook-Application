<%@page import="com.ebook.dao.AdminDAO"%>
<%@page import="com.ebook.model.Admin"%>
<%@page import="com.ebook.service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%
  
   try{
      String userType = request.getParameter("userType");
      if(userType.equals("Admin"))
      {
         String email = request.getParameter("email");
         String password = request.getParameter("password");
         
         Admin admin= new Admin(email, password);
         
         boolean status = AdminDAO.checkUserLogin(admin);
         if(status)
         {
             session.setAttribute("current_user",email);
             response.sendRedirect("admin_dashboard.jsp");
         }
           else
            response.sendRedirect("index.jsp");
      }
      else if(userType.equals("User"))
      {
        
      }
   }
   catch(Exception e)
   {
     e.printStackTrace();
   }
   
%>