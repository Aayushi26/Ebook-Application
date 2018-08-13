package com.ebook.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
  private static Connection con = null;
  public static Connection getConnection()
  {
     try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebookdb","root","root");
     }
     catch(Exception e)
     {
       e.printStackTrace();
     }
     return con;
  }
}
