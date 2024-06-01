package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "booksandstudent_table")
public class BookAndStudent 
{
	@Column(name = "bid")
	private int bid;
	
	@Column(name="bname",nullable=false,length = 50)
	private String bname;

	@Id
	@Column(name = "sid")
	private int sid;
	
	@Column(name="sname",nullable=false,length = 50)
	private String sname;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	@Override
	public String toString() {
		return "BookAndStudent [bid=" + bid + ", bname=" + bname + ", sid=" + sid + ", sname=" + sname + "]";
	}

	
	
}
