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
	<div class="bookview">
		<div class="singlebook">
			<img alt="" src=${book.image} class="singlebookimg" >
		</div>
		
		<div class="addstudent" style="margin-left: 10%;padding:20px;">
			<h1>Book: ${book.name }</h1>
			<br>
			<h2>Author: ${book.author }</h2>
			<h2>Published On: ${book.published_date }</h2>
			<br>
			<h2>${book.description }</h2>
			<br>
			<button class="addbtn"><a style="text-decoration: none; color: white;" href="addauserwithbook?id=${book.id}">Add User</a></button>
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
                         <th> Action</th>
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
							<a style="text-decoration: none; color: #009688;" href="">View</a>
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