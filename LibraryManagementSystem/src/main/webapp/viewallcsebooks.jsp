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
 <html lang="en" title="Coding design">
 
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <title>Responsive HTML Table With Pure CSS - Web Design/UI Design</title>
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
 <div class="body">
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
                         <th> Name <span class="icon-arrow">&UpArrow;</span></th>
                         <th> Author Name <span class="icon-arrow">&UpArrow;</span></th>
                         <th> Published On <span class="icon-arrow">&UpArrow;</span></th>
                         <th> Action</th>
                     </tr>
                 </thead>
                 <tbody>
                     <c:forEach items="${csebooks}"  var="cse"> 
                     <c:if test="${cse.dept=='cse'}">
						<tr> 
							<td><c:out value="${cse.id}" /></td> 
							<td><c:out value="${cse.name}" /></td> 
							<td><c:out value="${cse.author}" /></td> 
							<td><c:out value="${cse.published_date}" /></td> 
							<td>
							<a style="text-decoration: none; color: #009688;" href='<c:url value="viewbook?id=${cse.id}"></c:url>'>View</a>
							</td>
						</tr> 
					</c:if>
					</c:forEach> 
                 </tbody>
             </table>
         </section>
     </main>
     </div>
     <div style="display: flex; justify-content: center;">
     <button style="background-color:#009688; align-items: center;"><a style="text-decoration: none; color: white;" href="addabook">Add a Book</a></button>
 	</div>
 </body>
 <script src="table.js">
    </script>
 </html>