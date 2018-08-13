package com.ebook.model;

public class Category {
  private int id;
  private String c_name;

    public Category(int id, String c_name) {
        this.id = id;
        this.c_name = c_name;
    }

    public Category() {
    }

    public Category(String c_name) {
        this.c_name = c_name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }
  
}
