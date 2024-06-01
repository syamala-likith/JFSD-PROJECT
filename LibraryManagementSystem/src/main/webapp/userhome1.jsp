<!DOCTYPE html>
<html>
<head>
<title>USER HOME</title>

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
<!-- <h3 align=right>Hi ${lname}</h3> -->
<%@ include file="userlatestbooks.jsp" %>
</body>
</html>