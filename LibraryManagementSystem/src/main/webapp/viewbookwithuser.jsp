<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.jfsd.springboot.model.Librarian" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

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
<title>Insert title here</title>

<link rel="stylesheet" href="css/viewbookwithuser.css">
<style type="text/css">
* {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}
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
      <img class="projcard-img" src="images/profile.jpg" />
      <div class="projcard-textbox">
        <div class="projcard-title">User details with a Book </div>
        <br>
        <div class="projcard-subtitle">Here are the details of the User & Book</div>
        <div class="projcard-bar"></div>
        <div class="projcard-description">
        <i><b>Book ID:</b></i> ${bu.book.id }
        <br>
        <br>
        <i><b>Book Name:</b></i> ${bu.book.name}
        <br>
        <br>
        <i><b>Total Copies:</b></i> ${bu.noofcopies}
        <br>
        <br>
        <i><b>ID:</b></i> ${bu.user.id }
        <br>
        <br>
        <i><b>Name:</b></i> ${bu.user.name}
        <br>
        <br>
        <i><b>Gender:</b></i> ${bu.user.gender}
        <br>
        <br>
        <i><b>Email ID:</b></i> ${bu.user.email }
        <br>
        <br>
        <i><b>Taken On:</b></i> ${bu.takendate}
        <br>
        <br>
		<i><b>Last date to Submit:</b></i> ${bu.duedate}
        <br>
        <br>
        <i><b>Due as of Now:</b></i> ${due}
        <br>
        <br>
        </div>
		<button class="addbtn"><a style="text-decoration: none; color: white;" href="updatenoofcopies?id=${bu.id}">Update No Of Copies</a></button>
      </div>
    </div>
  </div>
  </div>
</body>
</html>