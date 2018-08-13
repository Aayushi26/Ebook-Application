package com.ebook.service;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegisterationFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("InIt Called...............");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        // System.out.println("DoFilter called................");
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)res;
        boolean status = true;
       String username = "";
       String email = "";
       String password = "";
       String  mobile = "";
       String age = "";
       try{
         username = request.getParameter("username").trim();
         if(username.equals("")||username.length() == 0)
         {
           status = false;
           request.setAttribute("error1","Invalid UserName");
         }
         email = request.getParameter("email").trim();
         if(email.length() == 0)
         {
             status = false;
             request.setAttribute("error2","Invalid Email");
         }
         password = request.getParameter("password");
         if(password.length()<=6 || password.length() >=10)
         {
            status = false; 
           request.setAttribute("error3","Password Length must contain 6-10 letters");
         }
         mobile = request.getParameter("mobile");
         if(mobile.length() != 10)
         {
           try{
              Long.parseLong(mobile);
           }
           catch(Exception e)
           {
              status = false; 
              request.setAttribute("error4", "Invalid Mobile Number");
           }
         }
         age = request.getParameter("age");
         if(age.length() == 0 || age.length() <=17)
         {
           try{
              Long.parseLong(age);
           }
           catch(Exception e)
           {
              status = false; 
              request.setAttribute("error5", "Invalid Age");
           }
         }
         if(status == false)
         {
             RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
             rd.forward(request, response);
         }
       }
       catch(Exception e)
       {
       }
    }

    @Override
    public void destroy() {
        System.out.println("Destroy called.................");
    }
    
}
