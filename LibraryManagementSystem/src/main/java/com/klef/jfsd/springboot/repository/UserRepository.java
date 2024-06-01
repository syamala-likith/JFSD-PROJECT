package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.User;

import jakarta.transaction.Transactional;


@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
	@Query("select u from User u where u.email=?1 and u.password=?2")
	public User checkuserlogin(String email, String pwd);
	
	@Query("select u from User u where u.password=?1")
	public User checkuserpassword(String pwd);
	
	  @Modifying
	  @Transactional 
	  @Query(" update User u set u.name=?2, u.gender=?3, u.dateofbirth=?4, u.email=?5, u.password=?6, u.contact=?7 where u.id=?1 ")
	  public int updatebookanduser(int id, String name, String gender, String dob, String email, String pwd, String contact);
}
