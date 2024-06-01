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
    <link rel="stylesheet" href="css/admintable.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
                 <li><a href="viewallbooks">
                  <i class="uil uil-book"></i>
                    <span class="link-name">Book</span>
                </a></li>
                
            </ul>
            
            <ul class="logout-mode">
                <li><a href="adminlogin">
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

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">Dashboard</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-user-square"></i>
                        <span class="text">Total Users</span>
                        <span class="number">${usercnt}</span>
                    </div>
                    <div class="box box2">
                        <i class="uil uil-book-reader"></i>
                        <span class="text">Librarians</span>
                        <span class="number">${libcnt}</span>
                    </div>
                   <br>
                    <div class="box box3">
                        <i class="uil uil-books"></i>
                        <span class="text">Total Books</span>
                        <span class="number">${bookcnt}</span>
                    </div>
                </div>
            </div>

           
        </div>
        <br>
        <br>
    
        
    </section>
    <script src="adminscript.js"></script>
    <script src="admintable.js">
    </script>
</body>
</html>