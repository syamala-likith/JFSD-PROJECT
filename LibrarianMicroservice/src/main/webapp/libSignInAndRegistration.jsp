<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../librarian/css/libSignInAndRegistration.css" />
    <title>Sign in & Sign up Form</title>
  </head>
  <body>
  <%@ include file="navbar.jsp" %>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
        
          <form method="post" action="checkliblogin" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="email" name="email" placeholder="Email" required/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="pwd" placeholder="Password" required/>
            </div>
            
            <input type="submit" value="Login" class="btn solid" />
            
            <p class="social-text">Or Sign in with social platforms</p>
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
          
          
          <form method="post" action="insertlib" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="name" placeholder="Name" required="required"/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-venus-mars"></i>
              <select name="gender" required="required">
                     <option value="">SELECT GENDER</option>
                     <option value="male">MALE</option>
                     <option value="female">FEMALE</option>
               </select>
            </div>
            
            <div class="input-field">
              <i class="fas fa-cake-candles"></i>
              <input type="date" name="dob" placeholder="Date Of Birth" required="required"/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" name="email" placeholder="Email" required/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="pwd" placeholder="Password" required/>
            </div>
            
            <div class="input-field">
              <i class="fa fa-phone"></i>
              <input type="text" name="contact" pattern="[789][0-9]{9}" placeholder="Contact" required/>
            </div>
            
            <input type="submit" class="btn" value="Sign up" />
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
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="../librarian/images/loginimage.svg" class="image" alt="" />
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
          <img  src="../librarian/images/register2.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>
