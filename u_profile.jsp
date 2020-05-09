<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 40px}
.style3 {font-size: 35px; color: #fc6400; }
.style9 {font-size: 20px}
.style10 {font-family: "Times New Roman", Times, serif}
.style12 {color: #000000}
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
        <div id="coin-slider"> <a href="#"><img src="https://media.istockphoto.com/vectors/social-network-scheme-which-contains-people-connected-to-each-other-vector-id640162840" width="960" height="320" alt="" /></a> <a href="#"><img src="https://www.bmmagazine.co.uk/wp-content/uploads/2017/06/shutterstock_387274792-1-e1498567304954.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p align="center" class="style3">My Profile</p>
          <p>&nbsp;</p>
		  
		  

<table width="580" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%
						
						String user=(String)application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								
								
								
								
								
								
					%>
        <tr>
          <td width="226" rowspan="6" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;">
          </a></div></td>
        </tr>
		
        <tr>
          <td  width="166" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">Name</div></td>
          <td  width="180" height="40" valign="middle" bgcolor="#00FFFF" style="color:#000000;"> <p><span class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s2);%>
          </span></p>
            </td>
        </tr>
		<tr>
          <td  width="166" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">E-Mail</div></td>
          <td  width="180" height="40" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s4);%>
          </div></td>
        </tr>
        <tr>
          <td  width="166" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">Mobile</div></td>
          <td  width="180" height="40" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s5);%>
          </div></td>
        </tr>
        
        <tr>
          <td  width="166" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">Date of Birth</div></td>
          <td  width="180" height="40" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s7);%>
          </div></td>
        </tr>
         <tr>
		 
          <td  width="166" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">Address</div></td>
          <td  width="180" height="40" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s6);%>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="166" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">Gender</div></td>
          <td  width="180" height="40" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s8);%>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="166" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">Pincode</div></td>
          <td  width="180" height="40" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s9);%>
          </div></td>
        </tr>
		
		<tr>
		  <td></td>
          <td  width="166" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style10 style12 style9" style="margin-left:20px;">Status</div></td>
          <td  width="180" height="40" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style6 style13 style10 style12 style7 style9" style="margin-left:20px;; color: #0000FF;">
            <%out.println(s10);%>
          </div></td>
        </tr>
		
        <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>         		  























          <p align="right"><a href="u_main.jsp" class="style9">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
            <li><a href="u_login.jsp"><span>Log Out</span></a></li>
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
