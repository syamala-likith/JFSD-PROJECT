<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login&Registration</title>
    <link type="text/css" rel="stylesheet" href="../librarian/css/registration.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="registration.css">
</head>
<body>
<div class="navbar">
<%@ include file="navbar.jsp" %>
</div>
    <div class="container">
   <div class="form signin">
      <h2>Sign In</h2>
      <form method="post" action="checkliblogin">
         <div class="inputBox">
            <input type="email" name="email" required/>
            <i class="fa-regular fa-user"></i>
            <span>EMAIL</span>
         </div>   
         <div class="inputBox">
            <input type="password" name="pwd" required/>
            <i class="fa-solid fa-lock"></i>
            <span>PASSWORD</span>
         </div>
         <div class="inputBox">
         <input type="submit" value="Login">
         </div>
         </form>
         <p>Not Registered ? <a href="libreg" class="create">Create an account</a></p>
         <p><a href="/" class="create">Home</a></p>
        </div>
    </div>
</body>
</html>