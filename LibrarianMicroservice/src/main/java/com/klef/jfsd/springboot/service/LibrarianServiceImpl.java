package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.Librarian;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.BookRepository;
import com.klef.jfsd.springboot.repository.LibrarianRepository;

@Service
public class LibrarianServiceImpl implements LibrarianService
{
	@Autowired
	private LibrarianRepository librarianRepository;
	@Autowired
	private BookRepository bookRepository;
	
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
	public Student viewStudentbyid(int lid) 
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
	public Books viewempbyid(int bid) {
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

}
