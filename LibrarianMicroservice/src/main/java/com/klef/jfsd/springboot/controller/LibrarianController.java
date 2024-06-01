package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.Librarian;
import com.klef.jfsd.springboot.service.LibrarianService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("librarian")
public class LibrarianController 
{
	@Autowired
	private LibrarianService librarianService;
	
	@GetMapping("/")
	public String index()
	{
		return "main";
	}
	
	@GetMapping("home") 
	public ModelAndView librarian()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("main");
	    return mv;
	}
	
	@GetMapping("libreg") 
	public ModelAndView libregistration()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("libreg");
	    return mv;
	}
	
	@GetMapping("libSignInAndRegistration") //URI & method name can be different
	public ModelAndView libSignInAndRegistration()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("libSignInAndRegistration");
	    return mv;
	}
	
	@GetMapping("libhome") 
	public ModelAndView libhome()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("libhome");
	    return mv;
	}
	
	@GetMapping("viewallcsebooks") 
	public ModelAndView cse()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallcsebooks");
	    
	    List<Books> bookslist = librarianService.viewallcsebooks();
	    mv.addObject("csebooks", bookslist);	
	    
	    return mv;
	}
	
	@GetMapping("viewbook")
	public ModelAndView viewempdemo(@RequestParam("id") int bid)
	{
		Books book = librarianService.viewempbyid(bid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewbookbyid");
	    mv.addObject("book", book);
	    return mv;
	}
	
	@GetMapping("addabook") 
	public ModelAndView addabook()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("addabook");
	    return mv;
	}
	
	@PostMapping("insertlib")
	public ModelAndView insertaction(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String msg = null;
		
		try
		{
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String contact = request.getParameter("contact");
			
			Librarian lib = new Librarian();
			lib.setName(name);
			lib.setGender(gender);
			lib.setDateofbirth(dob);
			lib.setEmail(email);
			lib.setPassword(pwd);
			lib.setContact(contact);
			lib.setActive(true);
		    
		    msg = librarianService.addLibrarian(lib);
		    
		    mv.setViewName("displaymsg");
		    mv.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg = e.getMessage();
			
			mv.setViewName("displayerror");
			mv.addObject("message", msg);
		}
		
		return mv;
	}
	
	@PostMapping("addbook")
	public ModelAndView addbook(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String msg = null;
		
		try
		{
			String name = request.getParameter("name");
			String url = request.getParameter("url");
			String author = request.getParameter("author");
			String publishedon = request.getParameter("publishedon");
			String discription = request.getParameter("discription");
			
			Books book = new Books();
			book.setName(name);
			book.setImage(url);
			book.setAuthor(author);
			book.setPublished_date(publishedon);
			book.setDescription(discription);
		    
		    msg = librarianService.addbook(book);
		    
		    mv.setViewName("addbookmsg");
		    mv.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg = e.getMessage();
			
			mv.setViewName("addbookmsg");
			mv.addObject("message", msg);
		}
		
		return mv;
	}
	
	@PostMapping("checkliblogin")
	public ModelAndView checkliblogin(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Librarian lib = librarianService.checkliblogin(email, pwd);
		
		ModelAndView mv = new ModelAndView();
		
		if(lib!=null)
		{
			
			//session
			
			HttpSession session = request.getSession();
			
			session.setAttribute("lid", lib.getId()); // eid is a session variable
			session.setAttribute("lname", lib.getName()); // ename is a session variable 
			
			//session
			
			mv.setViewName("libhome");
		}
		else
		{
			mv.setViewName("libSignInAndRegistration");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
}
