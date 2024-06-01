<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/addabook.css" />
    <title>Add a Book</title>
  </head>
  <body>
  <%@ include file="libnavbar.jsp" %>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          
          <form method="post" action="addbook" enctype="multipart/form-data" class="sign-in-form">
            <h2 class="title">Add a Book</h2>
            
            <div class="input-field">
              <i class="fas fa-thin fa-book-open"></i>
              <input type="text" name="name" placeholder="Book Name" required="required"/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-solid fa-link"></i>
              <input type="text" name="url" placeholder="Image URL" required="required"/>
            </div>
            
    		<div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="author" placeholder="Book Author" required="required"/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-solid fa-calendar-days"></i>
              <input type="date" name="publishedon" placeholder="Published On" required="required"/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-solid fa-message"></i>
              <input type="text" name="discription" placeholder="Discription"/>
            </div>
            
            <div class="input-field">
              <i class="fa-solid fa-building"></i>
              <input type="text" name="dept" placeholder="Department" required="required"/>
            </div>
            
            <div class="input-field">
              <i class="fa-solid fa-book"></i>
              <input style="padding-top:13px;" type="file" name="file" placeholder="Book PDF" required="required"/>
            </div>
            
            <input type="submit" class="btn" value="ADD" />
     
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content" style="padding-right: 50%;">
            <h3 >Add a Book</h3>
          </div>
          <img src="images/addabook.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>