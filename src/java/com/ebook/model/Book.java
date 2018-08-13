package com.ebook.model;
public class Book {
  private int id;
  private String b_name;
  private String author;
  private String file_name;
  private String cover_photo;
  private int c_id;
  private String description;

    public Book(int id, String b_name, String author, String file_name, String cover_photo, int c_id, String description) {
        this.id = id;
        this.b_name = b_name;
        this.author = author;
        this.file_name = file_name;
        this.cover_photo = cover_photo;
        this.c_id = c_id;
        this.description = description;
    }

    public Book(String b_name, String author, String file_name, String cover_photo, int c_id, String description) {
        this.b_name = b_name;
        this.author = author;
        this.file_name = file_name;
        this.cover_photo = cover_photo;
        this.c_id = c_id;
        this.description = description;
    }

    public Book() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getB_name() {
        return b_name;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getCover_photo() {
        return cover_photo;
    }

    public void setCover_photo(String cover_photo) {
        this.cover_photo = cover_photo;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
  
}
