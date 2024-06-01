<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="css/userSignInAndRegistration.css" />
    <title>Sign in & Sign up Form</title>
  </head>
  <body>
  <%@ include file="usernav.jsp" %>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
<span class="blink">
<h3 align=center  style="color:red">${message}</h3>
</span>
          
          
          
          <form style="margin-top: 90px; " method="post" action="update" class="sign-in-form">
            <h2 class="title">Update</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
            <input type="text" name="id" value="${usr.id }" required="required" readonly/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="name" value="${usr.name }" required="required"/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-venus-mars"></i>
              <select name="gender">
                     <option value="${usr.gender }">${usr.gender }</option>
                     <option value="male">MALE</option>
                     <option value="female">FEMALE</option>
               </select>
            </div>
            
            <div class="input-field">
              <i class="fas fa-cake-candles"></i>
              <input type="text" name="dob" value="${usr.dateofbirth}" required="required"/>
            </div>
            
    
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" name="email" value="${usr.email }" required/>
            </div>
            
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="pwd" value="${usr.password }" required/>
            </div>
            
            <div class="input-field">
              <i class="fa fa-phone"></i>
              <input type="text" name="contact" value="${usr.contact }" pattern="[789][0-9]{9}" required/>
            </div>
            
            <input type="text" name="status" hidden/>
            
            <input type="submit" class="btn" value="Update" />
            <p class="social-text">Or Sign up with social platforms</p>
            <div class="social-media">
              <a href="#" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              Want to read some books? Don't have an account, Sign Up by clicking below button 
            </p>

          </div>
          <img src="images/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Want to read some books? You have an account, Sign In by clicking below button
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="images/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>
    <script src="app.js"></script>
  </body>
</html>
