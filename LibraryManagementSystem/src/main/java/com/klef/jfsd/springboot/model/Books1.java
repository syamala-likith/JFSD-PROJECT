//package com.klef.jfsd.springboot.model;
//
//import java.sql.Blob;
//
//import org.springframework.web.multipart.MultipartFile;
//
//import jakarta.persistence.Column;
//import jakarta.persistence.Entity;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.Table;
//
//@Entity
//@Table(name = "books_table")
//public class Books1
//{
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	@Column(name = "bid")
//	private int id;
//	
//	@Column(name="bname",nullable=false,length = 50)
//	private String name;
//	
//	@Column(name="bimage",nullable=false)
//	private String image;
//	
//	@Column(name="bauthor",nullable=false,length = 20)
//	private String author;
//	
//	@Column(name="bpublished_date",nullable=false,length = 70)
//	private String published_date;
//	
//	@Column(name="bdescription",length = 100)
//	private String description;
//	
//	@Column(name ="bdept", nullable=false, length=100)
//	private String dept;
//	
//	@Column(name = "book_file", nullable = false)
//	private MultipartFile bookfile;
//
//	public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public String getImage() {
//		return image;
//	}
//
//	public void setImage(String image) {
//		this.image = image;
//	}
//
//	public String getAuthor() {
//		return author;
//	}
//
//	public void setAuthor(String author) {
//		this.author = author;
//	}
//
//	public String getPublished_date() {
//		return published_date;
//	}
//
//	public void setPublished_date(String published_date) {
//		this.published_date = published_date;
//	}
//
//	public String getDescription() {
//		return description;
//	}
//
//	public void setDescription(String description) {
//		this.description = description;
//	}
//
//	public String getDept() {
//		return dept;
//	}
//
//	public void setDept(String dept) {
//		this.dept = dept;
//	}
//
//	public MultipartFile getBookfile() {
//		return bookfile;
//	}
//
//	public void setBookfile(MultipartFile bookfile) {
//		this.bookfile = bookfile;
//	}
//
//	@Override
//	public String toString() {
//		return "Books [id=" + id + ", name=" + name + ", image=" + image + ", author=" + author + ", published_date="
//				+ published_date + ", description=" + description + ", dept=" + dept + ", bookfile=" + bookfile + "]";
//	}
//
//	
//}
