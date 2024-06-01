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
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/addabook.css" />
    <title>Update Number Of Copies</title>
    
    <!-- JS for jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- CSS for searching -->
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<!-- JS for searching -->
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	
	<script>
		// .js-example-basic-single declare this class into your select box
		$(document).ready(function() {
		    $('.js-example-basic-single').select2();
		});
	</script>
    
  </head>
  <body>
  <%@ include file="libnavbar.jsp" %>

    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          
          <form method="post" action="updatecopies" class="sign-in-form">
            <h2 class="title">Update Number Of Copies</h2>
            
            <input type="text" name="id" placeholder="Book and User ID" value="${bu.id}" required="required" hidden/>
            <input type="text" name="bid" placeholder="Book ID" value="${bu.book.id}" required="required" hidden/>
            <input type="text" name="bname" placeholder="Book Name" value="${bu.book.name}" required="required" hidden/>
            
            
    		<div class="input-field">
              <i class="fas fa-user"></i>
              <div style="margin-top: 13px; width:100%;">
			  	<input type="text" name="takendate" value="${bu.user.id}-${bu.user.name}" placeholder="Taken On" required="required" readonly/>            
			  </div>
            </div>
            
            
            <div class="input-field">
              <i class="fas fa-solid fa-calendar-days"></i>
              <input type="date" name="takendate" value="${bu.takendate}" placeholder="Taken On" required="required" readonly/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-solid fa-message"></i>
              <input type="number" name="noofcopies" value="${bu.noofcopies }" min="1" max="${bu.noofcopies }" placeholder="Total Copies"/>
            </div>
            
            
            <input type="submit" class="btn" value="UPDATE" />
     
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content" style="padding-right: 50%;">
            <h3 >Update Number Of Copies</h3>
          </div>
          <img src="images/addabook.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>
