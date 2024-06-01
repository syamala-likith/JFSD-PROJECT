package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Librarian;

import jakarta.transaction.Transactional;

@Repository
public interface LibrarianRepository extends JpaRepository<Librarian, Integer>
{
	@Query("select l from Librarian l where l.email=?1 and l.password=?2")
	public Librarian checkliblogin(String email, String pwd);
	
	@Modifying
	@Transactional 
	@Query(" update User u set u.active=?2 where u.id=?1 ")
	public int updatestatus(int uid, boolean status);
	
}