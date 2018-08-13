package com.ebook.model;

public class User {
  private int id;
  private String username;
  private String email;
  private String mobile;
  private int age;
  private String password;

    public User(int id, String username, String email, String mobile, int age, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.mobile = mobile;
        this.age = age;
        this.password = password;
    }

    public User(String username, String email, String mobile, int age, String password) {
        this.username = username;
        this.email = email;
        this.mobile = mobile;
        this.age = age;
        this.password = password;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
  
}
