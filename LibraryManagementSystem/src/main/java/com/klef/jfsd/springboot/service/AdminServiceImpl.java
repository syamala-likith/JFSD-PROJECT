package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.Librarian;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.BookRepository;
import com.klef.jfsd.springboot.repository.LibrarianRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService
{
  @Autowired
  private AdminRepository adminRepository;
  
  @Autowired
  private LibrarianRepository libraranRepository;
  
  @Autowired
  private BookRepository bookRepository;
  
  @Autowired
  private UserRepository userRepository;

@Override
public List<Librarian> viewalllibrarian() {
	return libraranRepository.findAll();
}

@Override
public Librarian viewlibrarianbyid(int lid) {
	Optional<Librarian> obj = libraranRepository .findById(lid);
  
  if(obj.isPresent())
  {
    Librarian lib = obj.get();
    
    return lib;
  }
  else
  {
    return null;
  }
}

@Override
public String deletelibrarian(int lid) {
	Optional<Librarian> obj =  libraranRepository.findById(lid);
	String msg = null;
	if(obj.isPresent())
	{
		Librarian lib = obj.get();
    
		libraranRepository.delete(lib);
    
		msg = "Librarian Deleted Successfully";
	}
	else
	{
		msg = "Librarian Not Found";
	}
  
	return msg;
}

@Override
public Admin checkadminlogin(String uname, String pwd) {
	System.out.println("gfdcxcfvghjkl");
	return adminRepository.checkadminlogin(uname, pwd);
}

@Override
public String addLibrarian(Librarian l) {
	libraranRepository.save(l);
   return "Customer Added Successfully";
}

@Override
public String addStudent(User s) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public int updatestatus(int eid, boolean status) {
	// TODO Auto-generated method stub
	return 0;
}

@Override
public long librariancnt() {
	return libraranRepository.count();
}

@Override
public long usercnt() {
	return userRepository.count();
}

@Override
public long bookcnt() {
	return bookRepository.count();
}

@Override
public List<Books> viewallbooks() {
	return bookRepository.findAll();
}

@Override
public Books viewbookbyid(int bid) {
	Optional<Books> obj = bookRepository.findById(bid);
	  
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
public String deletebook(int bid) {
	Optional<Books> obj =  bookRepository.findById(bid);
	String msg = null;
	if(obj.isPresent())
	{
		Books book = obj.get();
    
		bookRepository.delete(book);
    
		msg = "Book Deleted Successfully";
	}
	else
	{
		msg = "Book Not Found";
	}
  
	return msg;
}




//  @Autowired
//  private CustomerRepository customerRepository;
  
 // @Override
//  public List<Librarian> viewalllibrarians() 
//  {
//    return libraranRepository.findAll();
//  }
//
//  @Override
//  public Employee viewempbyid(int eid) 
//  {
//	  Optional<Employee> obj =  employeeRepository.findById(eid);
//      
//      if(obj.isPresent())
//      {
//        Employee emp = obj.get();
//        
//        return emp;
//      }
//      else
//      {
//        return null;
//      }
//  }
//
//  @Override
//  public String deleteemp(int eid)
//  {
//    Optional<Employee> obj =  employeeRepository.findById(eid);
//         
//      String msg = null;
//         
//      if(obj.isPresent())
//      {
//        Employee emp = obj.get();
//           
//          employeeRepository.delete(emp);
//           
//          msg = "Employee Deleted Successfully";
//      }
//      else
//      {
//        msg = "Employee Not Found";
//      }
//         
//      return msg;
//  }
//
//		@Override
//		public Admin checkadminlogin(String uname, String pwd) 
//		{
//			return adminRepository.checkadminlogin(uname, pwd);
//		}
//
//		@Override
//		public String addCustomer(Customer c) {
//			customerRepository.save(c);
//			return "Customer Added Successfully";
//		}
//
//		@Override
//		public long employeecount() {
//			return employeeRepository.count();
//		}
//
//		@Override
//		public long customercount() {
//			return customerRepository.count();
//			
//		}
//		
//		//employee active status update
//
//		@Override
//		public int updatestatus(int eid, boolean status) {
//			return adminRepository.updatestatus(eid, status);
//		}

}