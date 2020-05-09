<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Recommendations</title>
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
.style4 {color: #FF0000}
.style5 {font-size: 18px}
.style6 {font-size: 24px}
.style7 {font-weight: bold}
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
          <li class="active"><a href="a_login.jsp"><span>admin</span></a></li>
          <li><a href="u_login.jsp"><span>User</span></a></li>
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
          <p align="center" class="style3">&nbsp;</p>
          <h1 class="style4 style6 style23"><strong>Click on the post to view all users recommendations </strong></h1>
        </div>
      <div class="entry">
        <div id="div">
          <div class="templatemo_h_line"></div>
          <p align="left">
            
            <%

	
	
	
    int num=1;
	
	String []splitFile;
	

      	try 
	{
        
      	
      	String categorie = request.getParameter("categorie");
		
		 
		
		 
		%>
          </p>
          <p align="left" class="style12 style5 style16"><%=num+"."+categorie+" Categorie"%></p>
          <p align="left"></p>
          
          <div align="left">
            <%
		
		
		
		String str2 = "select * from posts where categorie='"+categorie+"' order by rank desc";
		Statement st2 = connection.createStatement();
		ResultSet rs2 = st2.executeQuery(str2);
	
		while(rs2.next())
		{
		String p_Name = rs2.getString(2);
	
		
		
	   out.print("<input type=\"checkbox\" name=\"key\" ");
		%>
          
          <p align="left" class="style24"><a href="a_View_allRecommendations2.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>"><span class="style7"><%="  "+p_Name%></span> </a></p>
          </div>
          <div align="left">
            <%
	 num++;
	 }
	
	
         connection.close();
         }
         catch(Exception e)
         {
         out.println(e.getMessage());
         }
     %>
            <p align="center"><a href="a_main.jsp">Back</a></p>
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
