package com.ebook.dao;

import com.ebook.model.User;
import com.ebook.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserDAO {
  public static boolean registerUser(User user)
  {
     boolean status = false;
      Connection con = null;
      try{
          con = GetConnection.getConnection();
          String sql = "insert into user(username,email,mobile,age,password) values(?,?,?,?,?)";
          
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setString(1,user.getUsername());
          ps.setString(2,user.getEmail());
          ps.setString(3,user.getMobile());
          ps.setInt(4, user.getAge());
          ps.setString(5,user.getPassword());
      
          if(ps.executeUpdate() !=0)
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
}
