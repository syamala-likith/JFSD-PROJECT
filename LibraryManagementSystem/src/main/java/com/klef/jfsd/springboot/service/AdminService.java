package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.Librarian;
import com.klef.jfsd.springboot.model.User;


public interface AdminService
{
  public List<Librarian> viewalllibrarian();
  public List<Books> viewallbooks();
  public Librarian viewlibrarianbyid(int lid);
  public Books viewbookbyid(int bid);
  public String deletelibrarian(int lid);
  public String deletebook(int bid);
  public Admin checkadminlogin(String uname,String pwd);
  
  public String addLibrarian(Librarian l);
  public String addStudent(User s);
  public long librariancnt(); //count(*)
  public long usercnt();// we will use jpa repo methods for above three methods 
  public long bookcnt();
  public int updatestatus(int eid,boolean status);
}