
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
<title>User Recommendation</title>
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
.style9 {
	color: #FF0000;
	font-weight: bold;
}
.style11 {font-weight: bold}
.style12 {color: #FF0000}
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
          <p align="center" class="style3">User Recommendation....</p>
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3">
          <h2 class="style28">Image <span class="style23"><%=request.getParameter("p_Name")%></span></h2>
        <p class="style6">
          <%
		 try{ 
		 
		 String type = request.getParameter("type");
		 String user = (String)application.getAttribute("user");
		 
		 if(type.equals("recommend"))
		 {
		 String p_Name="",categorie="",p_rec=null;
		  p_Name = request.getParameter("p_Name");
		 categorie = request.getParameter("categorie");
		 p_rec = request.getParameter("p_rec");
		 if(p_rec.equals(""))
		 {
		
		  %>
        </p>
        <p class="style9">Recommendation TextArea Should not be Empty...</p>
        <p>&nbsp;</p>
        <div><a href="user_AddReview.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>">Back</a></div>
        <%
		    
		 }
		 else
		 {
		String strDate="",strTime="",dt="";
		 
		    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		    SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		    Date now = new Date();

		    strDate = sdfDate.format(now);
		    strTime = sdfTime.format(now);
		    dt = strDate + "   " + strTime;
		 
		 String str = "insert into userreviews(rec_by,rec_details,p_name,categorie,dt) values('"+user+"','"+p_rec+"','"+p_Name+"','"+categorie+"','"+dt+"')";
		 connection.createStatement().executeUpdate(str);
		 %>
        <p class="style14"><strong><span class="style12">Sucessfully Reviewed on image</span> <span class="style23"><%=p_Name%></span> By User <span class="style20"><%=user%></span> </strong></p>
        <p class="style11 style14">&nbsp;</p>
        <div><a href="u_main">Back</a></div>
        <%
		 }
		 
		 }
		  if(type.equals("rank"))
		 {
		 
		  String p_Name="",categorie="",rank="";
		  p_Name = request.getParameter("p_Name");
		  categorie = request.getParameter("categorie");
		  rank = request.getParameter("rank");
		  int rank1=0,rank2=0,rank3=0;
		 
		   if(rank.equals("--Select--"))
		   {
		   
		   %>
        <p class="style9">Please select the<span class="style7"> Rate</span></p>
        <p class="style11">&nbsp;</p>
        <div><a href="u_main.jsp">Back</a></div>
        <%
		   
		   }
		   else
		   {
		   if(rank.equalsIgnoreCase("Good"))
		   {
		   rank1 = 1;
		   }
		    if(rank.equalsIgnoreCase("Very Good"))
		   {
		   rank1 = 2;
		   }
		    if(rank.equalsIgnoreCase("Awesome"))
		   {
		   rank1 = 3;
		   }
		  
		   
		  
		   
		   String str1 = "select * from posts where i_name = '"+p_Name+"' ";
		   Statement st1 = connection.createStatement();
		   ResultSet rs1 = st1.executeQuery(str1);
		   if(rs1.next())
		   {
		   rank2 = rs1.getInt(7);
		   rank3 = rank2+rank1;
		   String str2 = "update posts set rank ="+rank3+" where i_name='"+p_Name+"' ";
		   connection.createStatement().executeUpdate(str2);
		   
		    %>
        <p class="style25"><span class="style7"><span class="style14 style12">Image</span> <span class="style23"><%=p_Name%>'s </span><span class="style14 style9">Rate</span></span><span class="style14 style9"> Updated Sucessfully</span></p>
        <p class="style25">&nbsp;</p>
        <div><a href="u_main.jsp">Back</a></div>
        <%
		   
		   }}
		   
		   }
		   }
		   catch(Exception e)
		   {
		   out.print(e);
		   }
		   
		%> </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="u_main.jsp">Home</a></strong></li>
			<li><strong><a href="u_login.jsp">Log Out</a></strong></li>
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
