<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login&Registration</title>
    <link type="text/css" rel="stylesheet" href="css/registration.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="registration.css">
</head>
<body>
    <div class="container">
        <div class="form signup">
            <h2>Sign Up</h2>
            <form method="post" action="insertlib">
               <div class="inputBox">
                  <input type="text" name="name" required="required"/>
                  <i class="fa-regular fa-user"></i>
                  <span>Name</span>
               </div> 

               <div class="inputBox">
                  <select name="gender">
                     <option value="">SELECT GENDER</option>
                     <option value="male">MALE</option>
                     <option value="female">FEMALE</option>
                  </select>
                  <i class="fa-solid fa-venus-mars"></i>
               </div> 

               <div class="inputBox">
                  <input type="date" name="dob" required="required"/>
                  <i class="fa-solid fa-cake-candles"></i>
               </div> 


               <div class="inputBox">
                  <input type="email" name="email" required/>
                  <i class="fa-regular fa-envelope"></i>
                  <span>Email address</span>
               </div>

               <div class="inputBox">
                  <input type="password" name="pwd" required/>
                  <i class="fa-solid fa-lock"></i>
                  <span>create password</span>
               </div>

               <div class="inputBox">
                  <input type="text" name="contact" pattern="[789][0-9]{9}" required/>
                  <i class="fa-solid fa-phone"></i>
                  <span>Contact Number</span>
               </div>
               


               <div class="inputBox">
                  <input type="submit" value="Create Account" class="button">
               </div>

            </form>
            <p>Aldready a member ? <a href="liblogin" class="login">Log in</a></p>
         </div>
    </div>
</body>
</html>