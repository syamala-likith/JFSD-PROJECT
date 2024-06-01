package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.BookAndUser;
import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.Librarian;
import com.klef.jfsd.springboot.model.User;

public interface LibrarianService 
{
	public String addLibrarian(Librarian lib);
	public String updatLibrarian(Librarian lib);
	public User viewStudentbyid(int lid);
	public Librarian checkliblogin(String email, String pwd);
	public String addbook(Books book);
	public List<Books> viewallcsebooks();
	public Books viewbookbyid(int bid);
	public List<User> viewallusers();
	public User viewuserbyid(int uid);
	public String addBookAndUser(BookAndUser bookAndUser);
	public List<BookAndUser> viewbybookid(int bid);
	public int setStatus(int uid, boolean ustatus);
	public BookAndUser viewbookanduserbyid(int id);
	public int updatecopies(int id,int noofcopies);
	public String deletebookwithuser(int id);
	public int updatebookanduser(int id, Books b,User u);
}
