<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.jfsd.springboot.model.Librarian" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>

<%
Librarian lib = (Librarian) session.getAttribute("lib");
	if(lib==null)
	{
		response.sendRedirect("sessionexpiry.html");
	}
%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Book</title>
<link rel="stylesheet" href="css/viewbookbyid.css">
<link rel="stylesheet" href="css/table.css">
<link rel="stylesheet" href="css/bookview.css">
<style type="text/css">
	nav{
    width: 100%;
    margin: auto;
    padding: 20px 0;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color:#009688;
}
</style>
</head>
<body>
	<%@ include file="libnavbar.jsp" %>
	<div class="projcard-container">
    
	  <div class="projcard projcard-blue">
	    <div class="projcard-innerbox">
	      <img class="projcard-img singlebookimg" style="margin-left: 10px;"  src=${book.image} />
	      <div class="projcard-textbox">
	        <div class="projcard-title"> Book View </div>
	        <br>
	        <div class="projcard-subtitle">Here are the details of a Book</div>
	        <div class="projcard-bar"></div>
	        <div class="projcard-description">
	        <i><b>ID:</b></i> ${book.id }
	        <br>
	        <br>
	        <i><b>Book Name:</b></i> ${book.name}
	        <br>
	        <br>
	        <i><b>Author Name:</b></i> ${book.author}
	        <br>
	        <br>
	        <i><b>Published On:</b></i> ${book.published_date}
	        <br>
	        <br>
	        <i><b>Department:</b></i> ${book.dept}
	        <br>
	        <br>
	        ${book.description }
	        <br>
	        <br>
	         <i><b>Contact No:</b></i> ${lib.contact}
	        <br>
	        <br>
	        </div>
	         <button class="addbtn"><a style="text-decoration: none; color: white;" href="addauserwithbook?id=${book.id}">Add User</a></button>
	      </div>
	    </div>
	  </div>
  </div>
	
	<div style="display: flex; justify-content: center; margin-top: 10px;">
	<main class="table">
         <section class="table__header">
             <h1>Computer Science & Enginering</h1>
             <div class="input-group">
                 <input type="search" placeholder="Search Data...">
                 <img src="images/magnifying-glass.jpg" alt="">
             </div>
             
         </section>
         <section class="table__body">
             <table>
                 <thead>
                     <tr>
                         <th> Id <span class="icon-arrow">&UpArrow;</span></th>
                         <th> User Id <span class="icon-arrow">&UpArrow;</span></th>
                         <th> User Name <span class="icon-arrow">&UpArrow;</span></th>
                         <th> No Of Copies <span class="icon-arrow">&UpArrow;</span></th>
                         <th> View</th>
                         <th> Delete</th>
                     </tr>
                 </thead>
                 <tbody>
                     <c:forEach items="${bookAndUser}"  var="bu"> 
						<tr> 
							<td><c:out value="${bu.id}" /></td> 
							<td><c:out value="${bu.user.id}" /></td> 
							<td><c:out value="${bu.uname}" /></td> 
							<td><c:out value="${bu.noofcopies}" /></td> 
							<td>
							<a style="text-decoration: none; color: #009688;" href="viewbookwithuser?id=${bu.id}">View</a>
							</td>
							<td>
							<a style="text-decoration: none; color: #009688;" href="deletebookwithuser?id=${bu.id}">Delete</a>
							</td>
						</tr> 
					</c:forEach> 
                 </tbody>
             </table>
         </section>
     </main>
     </div>
</body>
</html>