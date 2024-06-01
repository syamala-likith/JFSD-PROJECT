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
<title>LIBRARIAN HOME</title>

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
<!-- <h3 align=right>Hi ${lname}</h3> -->
<%@ include file="listofbooks.jsp" %>
</body>
</html>