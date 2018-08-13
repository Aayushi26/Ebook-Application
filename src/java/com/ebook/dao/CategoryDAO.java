package com.ebook.dao;

import com.ebook.model.Category;
import com.ebook.service.GetConnection;
import com.sun.org.apache.regexp.internal.recompile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import org.apache.catalina.webresources.Cache;

public class CategoryDAO {
  
    public static ArrayList<Category> getAllBookCategory()
    {
        ArrayList<Category>al = new ArrayList<Category>();
        Connection con = null;
        try{
            con = GetConnection.getConnection();
            String sql = "select * from category";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
               int id = rs.getInt("id");
               String c_name = rs.getString("c_name");
               Category c = new Category(id,c_name);
               al.add(c);
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
