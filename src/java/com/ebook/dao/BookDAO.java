package com.ebook.dao;

import com.ebook.model.Book;
import com.ebook.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BookDAO {
  public static boolean addBook(Book book)
  {
     boolean status = false;
      Connection con = null;
     try{
         con  = GetConnection.getConnection();
         String sql = "insert into book(b_name,author,file_name,cover_photo,c_id,description) values(?,?,?,?,?,?)";
         PreparedStatement ps = con.prepareStatement(sql);
         ps.setString(1,book.getB_name());
         ps.setString(2,book.getAuthor());
         ps.setString(3,book.getFile_name());
         ps.setString(4, book.getCover_photo());
         ps.setInt(5, book.getC_id());
         ps.setString(6,book.getDescription());
         if(ps.executeUpdate() != 0)
             status = true;
     }
     catch(Exception e)
     {
       e.printStackTrace();
     }
     finally{
         try{
             con.close();
         }
         catch(Exception e)
         {
           e.printStackTrace();
         }
     }
     return status;
  }
  public static ArrayList<Book> getAllBooks()
  {
      Connection con = null;
      ArrayList<Book>al = new ArrayList<>();
      try{
          con = GetConnection.getConnection();
          String sql = "select * from book";
          PreparedStatement ps = con.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
             int id = rs.getInt("id");
             String name = rs.getString("b_name");
             String author = rs.getString("author");
             String pdf_file = rs.getString("file_name");
             String cover_photo= rs.getString("cover_photo");
             int c_id = rs.getInt("c_id");
             String description = rs.getString("description");
             Book b = new Book(id, name, author,pdf_file, cover_photo, c_id, description);
             
             al.add(b);
          }
      }
      catch(Exception e)
      {
        e.printStackTrace();
      }
      finally{
          try{
              con.close();
          }
          catch(Exception e)
          {
            e.printStackTrace();
          }
      }
      return al;
  }
}
