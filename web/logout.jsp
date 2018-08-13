<%
  session.setAttribute("current_user",null);
  session.invalidate();
  response.sendRedirect("index.jsp");
%>