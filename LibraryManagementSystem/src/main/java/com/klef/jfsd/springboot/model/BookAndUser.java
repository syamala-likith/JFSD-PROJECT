package com.klef.jfsd.springboot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "booksanduser_table")
public class BookAndUser 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "bid")
	private Books book;
	
	@Column(name="bname",nullable=false,length = 50)
	private String bname;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "uid")
	private User user;
	
	@Column(name="uname",nullable=false,length = 50)
	private String uname;

	@Column(name="noofcopies",nullable = false)
	private int noofcopies;
	
	@Column(name = "takendate",nullable = false)
	private String takendate;
	
	@Column(name = "duedate",nullable = false)
	private String duedate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Books getBook() {
		return book;
	}

	public void setBook(Books book) {
		this.book = book;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getNoofcopies() {
		return noofcopies;
	}

	public void setNoofcopies(int noofcopies) {
		this.noofcopies = noofcopies;
	}

	public String getTakendate() {
		return takendate;
	}

	public void setTakendate(String takendate) {
		this.takendate = takendate;
	}

	public String getDuedate() {
		return duedate;
	}

	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}

	@Override
	public String toString() {
		return "BookAndUser [id=" + id + ", book=" + book + ", bname=" + bname + ", user=" + user + ", uname=" + uname
				+ ", noofcopies=" + noofcopies + ", takendate=" + takendate + ", duedate=" + duedate + "]";
	}

	
}
