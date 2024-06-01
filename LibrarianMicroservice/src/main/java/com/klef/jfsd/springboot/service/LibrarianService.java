package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.Librarian;
import com.klef.jfsd.springboot.model.Student;

public interface LibrarianService 
{
	public String addLibrarian(Librarian lib);
	public String updatLibrarian(Librarian lib);
	public Student viewStudentbyid(int lid);
	public Librarian checkliblogin(String email, String pwd);
	public String addbook(Books book);
	public List<Books> viewallcsebooks();
	public Books viewempbyid(int bid);
}
