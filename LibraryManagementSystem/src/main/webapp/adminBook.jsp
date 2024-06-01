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
     
    <script src="https://kit.fontawesome.com/5c03e39374.js" crossorigin="anonymous"></script>
    
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
                 <li><a href="adminUser">
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

        
        <br>
        <br>
        <br>

        <br><br><br>

        <main class="table">
            <section class="table__header">
                <h1 style="text-decoration: none; color: #009688;">BOOKS  DATA </h1>
                <div class="input-group">
                    <input type="search" placeholder="Search Data...">
                    <img src="images/magnifying-glass.jpg" alt="">
                </div>
               <!--  <div class="export__file">
                    <label for="export-file" class="export__file-btn" title="Export File"></label>
                    <input type="checkbox" id="export-file">
                    <div class="export__file-options">
                        <label>Export As &nbsp; &#10140;</label>
                        <label for="export-file" id="toPDF">PDF <img src="images/pdf.png" alt=""></label>
                        <label for="export-file" id="toJSON">JSON <img src="images/json.png" alt=""></label>
                        <label for="export-file" id="toCSV">CSV <img src="images/csv.png" alt=""></label>
                        <label for="export-file" id="toEXCEL">EXCEL <img src="images/excel.png" alt=""></label>
                    </div>
                </div> -->
            </section>
            <section class="table__body">
                <table>
                    <thead>
                        <tr>
                            <th> Id <span class="icon-arrow">&UpArrow;</span></th>
                            <th> Name <span class="icon-arrow">&UpArrow;</span></th>
                            <th> Author <span class="icon-arrow">&UpArrow;</span></th>
                            <th> Published Date <span class="icon-arrow">&UpArrow;</span></th>
                            <th> View <span class="icon-arrow">&UpArrow;</span></th>
                            <th> Action <span class="icon-arrow">&UpArrow;</span></th>
                        </tr>
                    </thead>
                    <tbody>
                         <c:forEach items="${bookdata}"  var="book"> 
            <tr> 
              <td><c:out value="${book.id}" /></td> 
              <td><c:out value="${book.name}" /></td> 
              <td><c:out value="${book.author}" /></td> 
              <td><c:out value="${book.published_date}" /></td> 
                 <td>
              <a style="text-decoration: none; color: #009688;" href='<c:url value="viewbookadmin?id=${book.id}"></c:url>'>View</a>
              </td>
                  <td>
              <a onclick="showPopup()" style="text-decoration: none; color: #009688;" href='<c:url value="deletebookadmin?id=${book.id}"></c:url>'>Delete</a>
              </td>
            </tr> 
          </c:forEach> 
                    </tbody>
                </table>
            </section>
        </main>   <br><br>
        
     <div>
        
        <a href="addBookAdmin"><button type="button">ADD BOOK &#x27F6; </button></a>
        <div id="popupBox"></div>
    </div>
    </section>
    <script src="adminscript.js"></script>
    <script src="admintable.js">
    </script>
    <script>
    let popupBox=document.getElementById('popupBox');
    let message='<i class="fa-solid fa-circle-check"></i> '{message};

    function showPopup(msg){
        let popup=document.createElement('div');
        popup.classList.add('popup');
        popup.innerHTML=msg;
        popupBox.appendChild(popup);
        setTimeout(()=>{
            popup.remove();
        },6000);
        
    }
    </script>
</body>
</html>