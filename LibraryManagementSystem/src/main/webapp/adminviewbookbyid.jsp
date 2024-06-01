<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/table.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>Admin Dashboard Panel</title> 
</head>
<body>
    <nav>
        <div class="logo-name">

            <span class="logo_name">ADMIN HOME</span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="adminhome">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Dashboard</span>
                </a></li>
                <li><a href="viewalllibs">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">Librarian</span>
                </a></li>
                <li><a href="adminUser">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">User</span>
                </a></li>
                 <li><a href="">
                  <i class="uil uil-book"></i>
                    <span class="link-name">Book</span>
                </a></li>
            </ul>
            
            <ul class="logout-mode">
                <li><a href="#">
                    <i class="uil uil-signout"></i>
                    <span class="link-name">Logout</span>
                </a></li>

                <li class="mode">
                    <a href="#">
                        <i class="uil uil-moon"></i>
                    <span class="link-name">Dark Mode</span>
                </a>

                <div class="mode-toggle">
                  <span class="switch"></span>
                </div>
            </li>
            </ul>
        </div>
    </nav>

    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div>
            
            <img src="images/user.png" alt="">
        </div>
         <br>
        <br>
        <br>

        <br><br><br>

  <div class="projcard-container">
    
	  <div class="projcard projcard-blue">
	    <div class="projcard-innerbox">
	      <img class="projcard-img singlebookimg" style="margin-left: 10px;"  src=${book.image} />
	      <div class="projcard-textbox">
	        <div class="projcard-title" style="text-decoration: none; color: #009688;" ><b> Book View</b> </div>
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
	        <%-- <br>
	         <i><b>Contact No:</b></i> ${lib.contact}
	        <br> --%>
	        <br>
	        <br>
	        <br>
	       <%--  </div>
	         <button class="addbtn"><a style="text-decoration: none; color: white;" href="addauserwithbook?id=${book.id}">Add User</a></button>
	      </div> --%>
	     
	    </div>
	    <div class="projcard-tagbox">
					<span class="projcard-tag">HTML</span>
					<span class="projcard-tag">CSS</span>
				</div> 
	  </div>
	   
  </div>
	
        
    
    </section>
    <script src="script.js"></script>
    <script src="table.js">
    </script>
</body>
</html>