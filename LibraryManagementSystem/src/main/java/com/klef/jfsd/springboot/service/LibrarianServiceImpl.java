package com.klef.jfsd.springboot.service;

import java.awt.print.Book;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.BookAndUser;
import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.Librarian;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.BookAndUserRepository;
import com.klef.jfsd.springboot.repository.BookRepository;
import com.klef.jfsd.springboot.repository.LibrarianRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class LibrarianServiceImpl implements LibrarianService
{
	@Autowired
	private LibrarianRepository librarianRepository;
	@Autowired
	private BookRepository bookRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private BookAndUserRepository bookAndUserRepository;
	
	@Override
	public String addLibrarian(Librarian lib) 
	{
		librarianRepository.save(lib);
		return "Librarian Registered Successfully...!";
	}

	@Override
	public String updatLibrarian(Librarian lib) 
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User viewStudentbyid(int lid) 
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Librarian checkliblogin(String email, String pwd) 
	{
		return librarianRepository.checkliblogin(email, pwd);
	}

	@Override
	public String addbook(Books book) 
	{
		bookRepository.save(book);
		return "Book Added Successfully";
	}

	@Override
	public List<Books> viewallcsebooks() {
		return bookRepository.findAll();
	}

	@Override
	public Books viewbookbyid(int bid) {
		Optional<Books> obj =  bookRepository.findById(bid);
        
        if(obj.isPresent())
        {
          Books book = obj.get();
          
          return book;
        }
        else
        {
          return null;
        }
	}

	@Override
	public List<User> viewallusers() 
	{
		return userRepository.findAll();
	}

	@Override
	public User viewuserbyid(int uid) 
	{
		Optional<User> obj =  userRepository.findById(uid);
        
        if(obj.isPresent())
        {
          User user = obj.get();
          
          return user;
        }
        else
        {
          return null;
        }
	}

	@Override
	public String addBookAndUser(BookAndUser bookAndUser) 
	{
		bookAndUserRepository.save(bookAndUser);
		return "User successfully associated with the book";
	}

	@Override
	public List<BookAndUser> viewbybookid(int bid) 
	{
		return bookAndUserRepository.viewbybookid(bid);
	}

	@Override
	public int setStatus(int uid, boolean ustatus) 
	{	
		return librarianRepository.updatestatus(uid, ustatus);
	}

	@Override
	public BookAndUser viewbookanduserbyid(int id)
	{
		Optional<BookAndUser> obj =  bookAndUserRepository.findById(id);
        
        if(obj.isPresent())
        {
          BookAndUser bu = obj.get();
          
          return bu;
        }
        else
        {
          return null;
        }
	}

	@Override
	public int updatecopies(int id, int noofcopies) 
	{
		return bookAndUserRepository.updatecopies(id, noofcopies);
	}

	@Override
	public String deletebookwithuser(int id) {
		Optional<BookAndUser> obj =  bookAndUserRepository.findById(id);
		  String msg = null;
		  if(obj.isPresent())
		  {
		    BookAndUser bu = obj.get();
		    
		    bookAndUserRepository.delete(bu);
		    
		    msg = "Librarian Deleted Successfully";
		  }
		  else
		  {
		    msg = "Librarian Not Found";
		  }
		  
		  return msg;
	}

	@Override
	public int updatebookanduser(int id, Books b, User u) {
		return bookAndUserRepository.updatebookanduser(id, b,u);
	}

}
