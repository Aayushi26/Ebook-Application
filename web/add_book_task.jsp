<%@page import="com.ebook.dao.BookDAO"%>
<%@page import="com.ebook.model.Book"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%
   int c_id = 0;
   String b_name = "";
   String author = "";
   String description = "";
   String cover_photo = "";
   String pdf_file = "";
   
   DiskFileItemFactory factory = new DiskFileItemFactory();
   ServletFileUpload upload = new ServletFileUpload(factory);
   List<FileItem>item = upload.parseRequest(request);
   Iterator<FileItem>itr = item.iterator();
   while(itr.hasNext())
   {
      FileItem fileItem = itr.next();
      if(fileItem.isFormField())
      {
         String fieldName = fileItem.getFieldName();
         if(fieldName.equals("c_id"))
           c_id = Integer.parseInt(fileItem.getString());
         if(fieldName.equals("b_name"))
           b_name = fileItem.getString();
         if(fieldName.equals("author"))
            author = fileItem.getString();
         if(fieldName.equals("description"))
             description = fileItem.getString();
      }
      else
      {
        String fieldName = fileItem.getFieldName();
        if(fieldName.equals("cover_photo"))
        {
            cover_photo = fileItem.getName();
            String filePath = getServletContext().getRealPath("/")+"cover_photo/"+cover_photo;
            out.print("<br>FilePath=>"+filePath);
            File f = new File(filePath);
            fileItem.write(f);
        }
        if(fieldName.equals("pdf_file"))
        { 
            pdf_file = fileItem.getName();
            String filePath = getServletContext().getRealPath("/")+"pdf_file/"+pdf_file;
            out.print("<br>FilePath=>"+filePath);
            File f = new File(filePath);
            fileItem.write(f);
        }
      }
   }
   Book  book = new Book(b_name, author, pdf_file, cover_photo, c_id, description);
   boolean status = BookDAO.addBook(book);
   if(status)
   {
    %>
    <script>
        alert("Book Added");
        window.location.href = "add_book.jsp";
    </script>
    <%
   }
   else
   {
     %>
    <script>
        alert("Error");
        window.location.href = "add_book.jsp";
    </script>
    <%
   
   }
   /*out.print("C_Id :"+c_id);
   out.print("<br>b_name : "+b_name);
   out.print("<br> author :"+author);
   out.print("<br> description :"+description);
   out.print("<br> cover_photo:"+cover_photo);
   out.print("<br> pdf_file:"+pdf_file);
*/
%>