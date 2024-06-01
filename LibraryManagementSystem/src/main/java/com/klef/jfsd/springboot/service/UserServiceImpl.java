package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.BookRepository;
import com.klef.jfsd.springboot.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService
{
	@Autowired
  UserRepository userRepository;
	
	@Autowired
	BookRepository bookRepository;
	
	@Override
	public String addUser(User u) {
		userRepository.save(u);
		return "User Registration Successfull";
	}

	@Override
	public int updateUser(User u) {
		
		return userRepository.updatebookanduser(u.getId(), u.getName(),u.getGender(), u.getDateofbirth(), u.getEmail(), u.getPassword(), u.getContact());
	}

	@Override
	public User viewUserbyid(int uid) {
		Optional<User> obj=  userRepository.findById(uid);
	       
	       if(obj.isPresent())
	       {
	         User u= obj.get();
	         return u;
	       }
	       else
	       {
	         return null;
	       }
	}
	

	@Override
	public User checkuserlogin(String email, String pwd) {
	    return userRepository.checkuserlogin(email, pwd);
	    
	}

	@Override
	public List<Books> ViewAllBooks() {
		return (List<Books>) bookRepository.findAll();
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
	public User checkuserlogin(String pwd)
	{
		
		return userRepository.checkuserpassword(pwd);
	}

	@Override
	public User checkuserpassword(String pwd) {
		return userRepository.checkuserpassword(pwd);
	}

	@Override
	public String updateuserpword(User u)
	{
		User us = userRepository.findById(u.getId()).get();
        us.setPassword(u.getPassword());
        userRepository.save(us);
        return "User Password Updated Successfully";
	
	}
}
