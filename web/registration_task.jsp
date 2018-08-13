
<%@page import="com.ebook.service.SendMailSSL"%>
<%@page import="com.ebook.dao.UserDAO"%>
<jsp:useBean id="user" class="com.ebook.model.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>    
<%
  boolean status = UserDAO.registerUser(user);
  if(status)
  {
      SendMailSSL.sendEmail(user.getEmail());
      String strUrl =  "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=javaadvance61@gmail.com:1234789&senderID=TEST SMS&receipientno="+user.getMobile()+"&msgtxt=Account Created Successfully&state=4";
      response.sendRedirect(strUrl);
%>
   <script>
       alert("Registraion Success");
       window.location.href="index.jsp";
   </script>
   <%
  }
  else
   {
   %>
   <script>
       alert("Registraion Failed");
       window.location.href="index.jsp";
   </script>
   <%
   }
%>