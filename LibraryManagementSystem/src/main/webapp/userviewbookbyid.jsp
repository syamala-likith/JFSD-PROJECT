<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
 
 
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
	<%@ include file="usernav.jsp" %>
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
	        ${book.description }
	        <br>
	        <br>
	        </div>
	         <button class="addbtn"><a style="text-decoration: none; color: white;" href="https://upload.wikimedia.org/wikipedia/commons/0/07/C_Programming.pdf">ReadNow</a></button>
	      </div>
	    </div>
	  </div>
  </div>
	
	
</body>
</html>