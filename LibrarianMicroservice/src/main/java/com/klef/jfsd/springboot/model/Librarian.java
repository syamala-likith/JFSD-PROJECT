package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "librarian_table")
public class Librarian 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "lid")
	private int id;
	@Column(name="lname",nullable=false,length = 50)
	private String name;
	@Column(name="lgender",nullable=false,length = 10)
	private String gender;
	@Column(name="ldob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="lemail",nullable=false,unique = true,length = 70)
	private String email;
	@Column(name="lpassword",nullable=false,length = 30)
	private String password;
	@Column(name="lcontact",nullable=false,unique = true)
	private String contact;
	@Column(name="lactive",nullable=false)
	private boolean active; // true or false
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Librarian [id=" + id + ", name=" + name + ", gender=" + gender + ", dateofbirth=" + dateofbirth
				+", email=" + email + ", password=" + password + ", contact=" + contact
				+ ", active=" + active + "]";
	}
	
	
}
