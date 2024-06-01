package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.BookAndUser;
import com.klef.jfsd.springboot.model.Books;
import com.klef.jfsd.springboot.model.User;

import jakarta.transaction.Transactional;

@Repository
public interface BookAndUserRepository extends JpaRepository<BookAndUser, Integer>
{
	@Query("select b from BookAndUser b where b.book.id=?1")
	public List<BookAndUser> viewbybookid(int bid);
	
	@Modifying
	@Transactional 
	@Query(" update BookAndUser bu set bu.noofcopies=?2 where bu.id=?1 ")
	public int updatecopies(int id, int noofcopies);
	
	@Modifying
	@Transactional 
	@Query(" update BookAndUser bu set bu.book=?2, bu.user=?3 where bu.id=?1 ")
	public int updatebookanduser(int id, Books b, User u);
}
