<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{


var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na55=document.s.address.value;
if(na55=="")

{
alert("Please Enter Your address");
document.s.address.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}





var na9=document.s.gender.value;
if(na9=="-Select-")

{
alert("Please Select Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.pincode.value;
if(na10=="")

{
alert("please Enter Your Pincode");
document.s.pincode.focus();
return false;
}

var na5=document.s.location.value;
if(na5=="")

{
alert("Please Enter Your location");
document.s.location.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}

}
</script>



<style type="text/css">
<!--
.style2 {font-size: 40px}
.style3 {font-size: 35px; color: #fc6400; }
.style5 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #000000;
}
.style7 {font-size: 25px}
.style8 {
	color: #000000;
	font-size: 20px;
}
.style9 {font-size: 20px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style2">Group activity recognition in online social media</a></h1>
      </div>
      
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>admin</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="https://media.istockphoto.com/vectors/social-network-scheme-which-contains-people-connected-to-each-other-vector-id640162840" width="960" height="320" alt="" /></a> <a href="#"><img src="https://s27389.pcdn.co/wp-content/uploads/2017/06/AdobeStock_81441025-1-1024x594.jpeg" width="960" height="320" alt="" /></a> <a href="#"><img src="https://www.bmmagazine.co.uk/wp-content/uploads/2017/06/shutterstock_387274792-1-e1498567304954.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p align="center" class="style3">User Registration</p>
          <p>&nbsp;</p>
          <p align="center"><img src="images/register.jpg" width="217" height="87" /></p>
          <form name="s" action="u_RegIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
		  
            <span class="style12 style7 style9">
            <label for="name"> <br />
            </label>
            </span><span class="style7 style9">
            <label for="name"></label>
            </span><span class="style9">
            <label for="name"><span class="style22 style5 ">User Name (required)<br />
            </span></label>
            </span><p class="style14 style5 style6  style7 style8"><input id="name" name="userid" class="text" />
            </p>
			
            <span class="style9 style14 style20 style5 style6  style7 style8">
             <label for="password">Password (required)<br />
             </label>
            </span>
            <p class="style14 style5 style6  style7 style8"><input type="password" id="password" name="pass" class="text" /></p>
			
			
			
			
                  <span class="style9 style14 style20 style5 style6  style7 style8">
                  <label for="email">Email id (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8">
                    <input id="email" name="email" class="text" />
                  </p>
				  
                  <span class="style9 style14 style20 style5 style6  style7 style8">
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8">
                    <input id="mobile" name="mobile" class="text" />
                  </p>
				  
                  <span class="style14 style5 style6  style7 style8">
                  <label for="address">Your Address<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8">
                    <textarea name="address" cols="50" id="address"></textarea>
                  </p>
				  
                  <span class="style9 style14 style20 style5 style6  style7 style8">
                  <label for="dob">Date of Birth (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6  style7 style8">
                    <input id="dob" name="dob" class="text" />
                  </p>
				  
                  <span class="style9 style14 style20 style5 style6  style7 style8">
                  <label for="gender">Select Gender (required)<br />
                  </label>
                  </span>
                  <p class="style9 style20 style5 style6  style7 style8">
                    <select id="s1" name="gender" class="text" style="width:170px">
                      <option>-Select-</option>
                      <option>Male</option>
                      <option>Female</option>
                    </select>
                  </p>
				  
                  <span class="style19 style9 style14 style23 style5 style6  style7 style8">
                  <label for="pincode">Enter Pincode (required)<br />
                  </label>
                  </span>
                  <p class="style9 style20 style5 style6  style7 style8">
                    <input id="pincode" name="pincode" class="text" />
                  </p>
				  
                  <span class="style19 style9 style14 style23 style5 style6  style7 style8">
                  <label for="location">Enter Location (required)<br />
                  </label>
                  </span>
                  <p class="style9 style20 style5 style6  style7 style8">
                    <input id="loc" name="location" class="text" />
                  </p>
				  
                  <span class="style19 style9 style14 style23 style5 style6  style7 style8">
                  <label for="pic">Select Profile Picture (required)</label>
                  </span>
                  <span class="style9 style20 style23 style5 style6  style7 style8">
                  <label for="pic"><br />
                  </label>
                  </span>
				  
                  <p class="style15">
                    <input type="file" id="pic" name="pic" class="text" />
				  </p>
				  
                  <p class="style15">
                    <input name="submit" type="submit" value="REGISTER" />
                  </p>
                  <p align="right"><a href="u_login.jsp" class="style9">Back</a></p>
</form>
























          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="a_login.jsp"><span>Admin</span></a></li>
            <li><a href="u_login.jsp"><span>User</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
