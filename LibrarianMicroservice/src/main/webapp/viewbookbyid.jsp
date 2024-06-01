<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Book</title>
<link rel="stylesheet" href="../librarian/css/viewbookbyid.css">
<link rel="stylesheet" href="../librarian/css/table.css">
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
		<div class="singlebook" style="width: 300px; margin-left: 20%;">
			<img alt="" src=${book.image} class="singlebookimg" >
			<div class="para">
				<h2>Book Name: ${book.name}</h2>
				<h2>Author Name: ${book.author}</h2>
				<h2>Published ON: ${book.published_date}</h2>
			</div>
		</div>
		
		<div class="addstudent" style="width: 300px; margin-left: 20%;">
			<img alt="" src="../librarian/images/student.svg" class="addstudentimg" >
				<button class="addbtn">Add Student</button>
		</div>
	</div>
	
	<div style="display: flex; justify-content: center; margin-top: 10px;">
	<main class="table">
         <section class="table__header">
             <h1>Computer Science & Enginering</h1>
             <div class="input-group">
                 <input type="search" placeholder="Search Data...">
                 <img src="../librarian/images/magnifying-glass.jpg" alt="">
             </div>
             
         </section>
         <section class="table__body">
             <table>
                 <thead>
                     <tr>
                         <th> Book Id <span class="icon-arrow">&UpArrow;</span></th>
                         <th> Book Name <span class="icon-arrow">&UpArrow;</span></th>
                         <th> Student Id <span class="icon-arrow">&UpArrow;</span></th>
                         <th> Student Name <span class="icon-arrow">&UpArrow;</span></th>
                         <th> Action</th>
                     </tr>
                 </thead>
                 <tbody>
                     <c:forEach items="${csebooks}"  var="cse"> 
						<tr> 
							<td><c:out value="${cse.id}" /></td> 
							<td><c:out value="${cse.name}" /></td> 
							<td><c:out value="${cse.author}" /></td> 
							<td><c:out value="${cse.published_date}" /></td> 
							<td>
							<a style="text-decoration: none; color: #009688;" href='<c:url value="viewbook?id=${cse.id}"></c:url>'>View</a>
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