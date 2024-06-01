<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div class="banner">
        <nav id="navbar">
            
            <img src="images/lib2.png" class="logo" >
        
            <ul id="menu">
                <li class="li"><a href="/"><i class="fa fa-fw fa-home"></i><b> Home</b></a></li>
                <li class="li"><a href="liblogin"><i class="fa fa-fw fa-user"></i><b> Librarian</b></a></li>
                <li class="li"><a href=""><i class="fa fa-fw fa-user"></i><b> Student</b></a></li>
                <li class="li"><a href="#aboutus"><i class="fa fa-globe"></i><b> About us</b></a></li>
                <li class="li"><a href="#contactus">&#x260E; <b>Contact</b></a></li>
            </ul>
        </nav>
        <div class="content">
            <h1 >LIBRARY MANAGEMENT SYSTEM</h1>
            <p>If you're ready to turn the page, you can do it here.</p>
            <div>
                <button type="button"><span></span>TEAM &#x270C;</button>
                <button type="button"><span></span>GET STARTED &#x27F6;</button>
            </div>
        </div>
        
    </div>
   


    <section id="aboutus">
        <div class="title-text">
            <p>ABOUT US</p>
            <h1>Why Choose Us</h1>
        </div>
        <div class="aboutus-box">
            <div class="aboutus1">
                <h1>Books</h1>
                <div class="aboutus-desc">
                    <div class="aboutus-icon">
                        <i class="fa fa-book fa-fade " style="color: #51a493;"></i>
                    </div>
                    <div class="aboutus-text">
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium explicabo ad 
                            corrupti magnam non quo suscipit! Aspernatur consectetur tempora, 
                            cum tenetur optio rem quo, quaerat, aliquid amet sed ratione recusandae.</p>
                    </div>
                </div>
                <h1>Articles</h1>
                <div class="aboutus-desc">
                    <div class="aboutus-icon">
                        <i class="fa fa-check-square-o fa-fade"></i>
                    </div>
                    <div class="aboutus-text">
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium explicabo ad 
                            corrupti magnam non quo suscipit! Aspernatur consectetur tempora, 
                            cum tenetur optio rem quo, quaerat, aliquid amet sed ratione recusandae.</p>
                    </div>
                </div>
                <h1>Journals</h1>
                <div class="aboutus-desc">
                    <div class="aboutus-icon">
                        <i class="fa fa-newspaper fa-fade" style="color: #51a493;"></i>
                    </div>
                    <div class="aboutus-text">
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium explicabo ad 
                            corrupti magnam non quo suscipit! Aspernatur consectetur tempora, 
                            cum tenetur optio rem quo, quaerat, aliquid amet sed ratione recusandae.</p>
                    </div>
                </div>
            </div>
            <div class="aboutus-image">
                <img src="images/books1.avif">
            </div>
        </div>
    </section>
    
    <!-- Contact us -->

    <section id="contactus">
        <img src="images/footer2.png" class="contact-img">
        <div class="title-text">
            <p>CONTACT</p>
            <h1>Try Our Website Today!</h1>
        </div>
        <div class="contact-row">
            <div class="contact-left">
                <h1>Website Details</h1>
                <p>All books,articles,journals are
                 available on different topics
                </p>
            </div>
            <div class="conatct-right">
                <h1>Get In Touch!</h1>
                <p>abc@gmail.com <i class="fa fa-paper-plane "></i></p>
                <p>+91 84902094092 <i class="fa fa-phone "></i></p>
            </div>
        </div>
        <div class="social-links">
            <i class="fa fa-facebook-square fa-fade "></i>
            <i class="fa fa-instagram fa-fade"></i>
            <i class="fa fa-twitter fa-fade"></i>
            <!-- <i class="fa fa- "></i> -->
        </div>
    </section>

    <script>
        var navbar=document.getElementById("navbar");
        var menu=document.getElementById("menu");

        window.onscroll=function(){
            if(window.pageYOffset>=menu.offsetTop){
                navbar.classList.add("sticky");
            }
            else{
                navbar.classList.remove("sticky");
            }
        }

        let sections = document.querySelectorAll('section');

        let navLinks = document.querySelectorAll('nav a');

        window.addEventListener("scroll", () => {
    sections.forEach(sec => {
        let top = window.scrollY;
        let offset = sec.offsetTop;
        let height = sec.offsetHeight;
        let id = sec.getAttribute('id');

        if (top >= offset && top < offset + height) {
            navLinks.forEach(links => {
                links.classList.remove('active');
            });
            
            // Adding the 'active' class to the corresponding navigation link
            document.querySelector('header nav a[href*="' + id + '"]').classList.add('active');
        }
    });
});

    </script>
         
    
</body>
</html> 