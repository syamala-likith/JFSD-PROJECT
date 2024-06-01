package com.klef.jfsd.springboot.service;

import java.util.List;
import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.User;

public interface UserService
{
public String addUser(User u);
public int updateUser(User u);
public User viewUserbyid(int uid);
public User checkuserlogin(String email, String pwd);
public List<Books> ViewAllBooks();
public Books viewbookbyid(int bid);
public User checkuserlogin(String pwd);
public User checkuserpassword(String pwd);
public String updateuserpword(User u);
}
