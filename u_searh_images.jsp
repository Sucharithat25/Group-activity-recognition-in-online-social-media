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
<title>Search Images</title>
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
.style8 {color: #000000}
.style9 {font-size: 18px}
.style10 {color: #FF0000}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
.style14 {font-weight: bold}
.style15 {font-weight: bold}
.style16 {font-weight: bold}
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
          <p align="center" class="style3">Search Images...</p>
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3"> <span class="style8"></span> <form action="u_searh_images.jsp" method="post">
          <div style="width:600px;">
            <table align="center" style="margin:0 0 0 30px;">
              <tr>
                <td width="174" height="45"><div align="center" class="style3">
                    <div align="right" class="style12">
                      <div align="center" class="style9">Enter Fuzzy Keyword</div>
                    </div>
                </div></td>
                <td width="152"><div align="left">
                  <input type="text" name="keyword" />
                </div></td>
                <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
              </tr>
              <tr>
                <td colspan="3"><div class="style2">
                  <div align="center" class="style8 style9">( searching content Based on Post Description)</div>
                </div></td>
              </tr>
            </table>
          </div>
          <p>&nbsp; </p>
        </form>
      </div>
      <p>
        <%
							try
							{
								String input="",l_Input="",p_Name="",p_Categorie="",p_Desc="",p_Desc1="",l_P_Desc1="";
								String strDate="",strTime="",dt="";
								int p_Rank=0;
								
								
								input= request.getParameter("keyword");	
								l_Input = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
								 
								
								String str = "select * from posts order by rank desc";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								
								while(rs.next())
								{
								    p_Name = rs.getString(2);
									p_Categorie = rs.getString(6);
									p_Desc = rs.getString(4);    
									p_Rank = rs.getInt(7);
									 
									String keyWord = "5765586965748666502846";
									keyWord = keyWord.substring(0, 16);
									byte[] keyValue = keyWord.getBytes();
									Key key = new SecretKeySpec(keyValue, "AES");
									Cipher c2 = Cipher.getInstance("AES");
									c2.init(Cipher.ENCRYPT_MODE, key);
									 p_Desc1 = new String(Base64.decode(p_Desc.getBytes()));
									
									
									 l_P_Desc1=p_Desc1.toLowerCase();
									
									if (l_P_Desc1.contains(l_Input)){
								
										
										
										
									%>
      </p>
      </p>
      <p> </p>
      <div align="center" class="style11"><span class="style4 style10">Image Name : </span><span class="style16"> <%=p_Name%></span></div>
      </p>
      <p> </p>
      <div align="center" class="style11"><span class="style10 style4"><strong>Image Categorie</strong></span> <span class="style10"><strong> :</strong></span><strong> <span class="style15"><%=p_Categorie%></span></strong></div>
      </p>
      <p></p>
      <div align="center"><strong><span class="style4 style10">Imaeg Rank : </span> <span class="style16"> <%=p_Rank%></span></strong></div>
      </p>
      <p></p>
      <div align="center" class="style5 style14"><span class="style11"><span class="style20">View</span> : <a href="u_usersearched_imagedetails.jsp?p_Name=<%=p_Name%>&amp;keyword=<%=input%>" class="style14">Details</a></span></div>
      </p>
      <p></p>
      <div>
        <div align="center">--------------------------------------------------------</div>
      </div>
      <p></p>
      <%
				
						  	}
						 }
				
	
				
						
					}catch(Exception e)
					{						  
						e.printStackTrace();
					}
						  
				%></p>
          <p>&nbsp;</p>
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
