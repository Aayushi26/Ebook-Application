package com.ebook.dao;

import com.ebook.model.Admin;
import com.ebook.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class AdminDAO {
    public static boolean checkUserLogin(Admin admin)
    {
      boolean status = false;
        Connection con = null;
        try{
           con = GetConnection.getConnection();
           String sql = "select * from admin where email = ? and password = ?";
           PreparedStatement ps = con.prepareStatement(sql);
           ps.setString(1,admin.getEmail());
           ps.setString(2,admin.getPassword());
            ResultSet rs = ps.executeQuery();
           if(rs.next())
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
