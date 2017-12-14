<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v3.10.7, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Bluefish 2.2.7" >
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/ecell-3rd-and-2nd-year-20160629-131025-128x128.jpg" type="image/x-icon">
  <meta name="description" content="E-Cell SGSITS">
  <title>Training and Placement Cell</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
  <link rel="stylesheet" href="assets/social-feed-plugin/jquery.socialfeed.css">
  <link rel="stylesheet" href="assets/social-feed-plugin/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/style.css">
  <link rel="stylesheet" href="assets/mobirise-slider/style.css">
  <link rel="stylesheet" href="assets/mobirise-gallery/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
 

        <title>Profile !!</title>
            <style>
                 body{
          text-align: center;
          background-image: url(d5.jpg);}
                 
        input{
        right: 600px;
        margin: 10px;
      }
      
      input[type="submit"]{
              background-color:#6B8E23;
    border: none;
    color: white;
    padding: 15px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    text-transform: uppercase;
    margin: 4px 2px;
    cursor: pointer;
    width :120px;
    height : 40px;
    align-item :center;
      }
</style>
            <script type="text/javascript">
            function formValidation()  
    {  
    var uid = document.registration.userid;  
    var uname = document.registration.username;   
    var uemail = document.registration.email;
    var cont=document.registration.no;
        var cgpa=document.registration.cgpa;

    var cv = document.registration.cv; 
    if(userid_validation(uid,5,15))  
    {  
    if(allLetter(uname))    
    {   
            if(allnumeric(cgpa))

    if(ValidateEmail(uemail))  
    {
    if(allNumeric(cont))
    {
     
    }  
    }
    }
}
    return false;  
      
    } 
    function userid_validation(uid,mx,my)  
    {  
    var uid_len = uid.value.length;  
    if (uid_len == 0 || uid_len >= my || uid_len < mx)  
    {  
    alert("User Id should not be empty / length be between "+mx+" to "+my);  
    uid.focus();  
    return false;  
    }  
    return true;  
    }  
    
    function allLetter(uname)  
    {   
    var letters = /^[A-Za-z]+$/;  
    if(uname.value.match(letters))  
    {  
    return true;  
    }  
    else  
    {  
    alert('Username must have alphabet characters only');  
    uname.focus();  
    return false;  
    }  
    } 
    function allNumeric(uzip)  
    {      
     var uzip_len = uzip.value.length;     
    var numbers = /^[0-9]+$/;  
    if(uzip.value.match(numbers)&&uzip_len==10)  
    {  
    return true;  
    }  
    else  
    {  
    alert('Contact must have numeric characters and length 10 only');  
    uzip.focus();  
    return false;  
    }  
    }  
    function allnumeric(uzip)  
    {   
    var numbers = /^-?\d*(\.\d+)?$/; 
    var n=parseInt(uzip);
    if(uzip.value.match(numbers)&&n<==10)  
    {  
    return true;  
    }  
    else  
    {  
    alert('CGPA must have numeric characters only');  
    uzip.focus();  
    return false;  
    }  
    }  
    function ValidateEmail(uemail)  
    {  
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
    if(uemail.value.match(mailformat))  
    {  
    return true;  
    }  
    else  
    {  
    alert("You have entered an invalid email address!");  
    uemail.focus();  
    return false;  
    }  
    } 
    </script>
    </head>
    <body onload="document.registration.userid.focus();">  
        <section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-0">
    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <span class="mbr-brand__logo"><a href="index.html"><img src="logo.png" class="mbr-navbar__brand-img mbr-brand__img" alt="SGSITS"></a></span>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="index.html">Training & Placement Cell</a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div  class="mbr-navbar__column">
                            <ul class="mbr-navbar__items mbr-navbar__items--right float-left mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active mbr-buttons--only-links"><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="ProfileStudent.jsp">PROFILE</a></li>
                                <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="UpdateProfile.jsp">UPDATE PROFILE</a></li> 
                                <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="View.jsp">VIEW RECRUITERS & APPLY </a>
                                </li><li class="mbr-navbar__item"><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="Feedback.jsp">GIVE FEEDBACK</a></li>
                                   <li class="mbr-navbar__item"><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="AdminReply.jsp">FEEDBACK REPLIES</a></li>                
                                <li class="mbr-navbar__item"><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="Logout.jsp">LOGOUT</a></li></ul>                            
                            
                            
                            
                            
                        </div>
                    </nav>
                </div>
            </div>
            </div>
            </div>
            </section>
        
        <br><br><br><br><br><br><br><br><br><br><br><br><br>
 
<h1>Application Form</h1>  
<% String cname=request.getParameter("a");
String unm = (String)session.getAttribute("UNM");
%>

<form name='registration' action="ApplyToCompanies.jsp" onSubmit="return formValidation();">  
 
 <input type="hidden" name="cname" size="50" value="<%=cname%>" />

 <input type="text" name="cname2" size="50" value="<%=cname%>" disabled/>

 
<br>

<input type="text" name="userid1" size="50" value="<%=unm%>"  disabled/>

<br>


<input type="text" name="username" size="50" placeholder="Name" required/>
<br>


<input type="text" name="cgpa" size="50" placeholder="CGPA" required/>  
<br>


<input type="email" name="email" size="50" placeholder="Email" required/>  
<br>

<input type="text" name="no" size="50"  placeholder="Contact Number" required/> 
<br>


<input type="text" name="cv" size="50" placeholder="Upload CV" required/>  
<br>
<input type="submit" name="submit" value="Submit" />  

</form>  
<br><br> <br><br> <br><br> <br><br><br><br> <br><br>
        <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="contacts2-i" style="background-color: rgb(60, 60, 60);">
    
    <div class="mbr-section__container container">
        <div class="mbr-contacts mbr-contacts--wysiwyg row" style="padding-top: 45px; padding-bottom: 45px;">
            <div class="col-sm-6">
                <figure class="mbr-figure mbr-figure--wysiwyg mbr-figure--full-width mbr-figure--no-bg">
                    <div class="mbr-figure__map mbr-figure__map--short"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0Dx_boXQiwvdz8sJHoYeZNVTdoWONYkU&amp;q=place_id:ElcyMywgTmVocnUgUGFyayBSZCwgQWdhcndhbCBOYWdhciwgQ2hob3RpIEd3YWx0b2xpLCBJbmRvcmUsIE1hZGh5YSBQcmFkZXNoIDQ1MjAwNywgSW5kaWE" allowfullscreen=""></iframe></div>
                </figure>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <p class="mbr-contacts__text"><strong>ADDRESS</strong><br>Training & Placement Cell, SGSITS Indore

First Floor, Near Golden Jubilee Auditorium

Shri Govindram Seksaria Institute of Technology and Science, Indore

23, Park Road, Indore- 452003, Madhya Pradesh, India



<br><br> 
<strong>CONTACT</strong> +91 731 2582375, 2546333<br>&nbsp;&nbsp;<br></p>
                    </div>
                    <div class="col-sm-6"><p class="mbr-contacts__text"><strong>Email:</strong></p><ul class="mbr-contacts__list"><li><a class="mbr-contacts__link text-gray" href="mailto:tposgsitsindore@gmail.com">tposgsitsindore@gmail.com</a></li><li><br></li></ul></div>
                              </div>
            </div>
                </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/masonry/masonry.pkgd.min.js"></script>
  <script src="assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/social-feed-plugin/codebird.min.js"></script>
  <script src="assets/social-feed-plugin/moment.js"></script>
  <script src="assets/social-feed-plugin/en-gb.js"></script>
  <script src="assets/social-feed-plugin/doT.js"></script>
  <script src="assets/social-feed-plugin/jquery.socialfeed.js"></script>
  <script src="assets/social-feed-plugin/main.js"></script>
  <script src="assets/mobirise/js/script.js"></script>
  <script src="assets/mobirise-gallery/script.js"></script>
</body>
</html>