<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/userviewprofile.css">
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
<%@ include file="usernav.jsp" %>
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
        <i><b>ID:</b></i> ${user.id }
        <br>
        <br>
        <i><b>Name:</b></i> ${user.name}
        <br>
        <br>
        <i><b>Gender:</b></i> ${user.gender}
        <br>
        <br>
        <i><b>Date of Birth:</b></i> ${user.dateofbirth}
        <br>
        <br>
        <i><b>Email:</b></i> ${user.email }
        <br>
        <br>
        <i><b>Contact:</b></i> ${user.contact}
        <br>
        <br>
		
        </div>
		<button class="addbtn"><a style="text-decoration: none; color: white;" href="updateprofile?id=${user.id}">Update Profile</a></button>
		<button class="addbtn"><a style="text-decoration: none; color: white;" href="userlogin">Logout</a></button>
      </div>
    </div>
  </div>
  </div>
</body>
</html>