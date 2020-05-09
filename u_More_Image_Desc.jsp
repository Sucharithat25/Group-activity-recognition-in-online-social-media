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
<title>Image Details</title>
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
.style8 {color: #000000}
.style9 {font-size: 18px}
.style10 {font-size: 18}
.style11 {font-size: 24px}
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
          <h1 class="style23 style11">Image<span class="style8"><%=request.getParameter("p_Name")%></span><span class="style12"> Details</span></h1>
    <p class="style6">&nbsp;</p>
    <p>
<%
try 
	{
		String p_Name="",Keyword="",user="",p_Desc="",p_Desc1="",categorie="",rec_By="",rec_Details="",rec_date="";
		String strDate="",strTime="",dt="";
		int p_Rank = 0,i = 0;
		String p_uses="";
		   
		p_Name = request.getParameter("p_Name");
		
			
		user = (String)application.getAttribute("user");
		  
		String str="select * from posts where i_name='"+p_Name+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(str);
		   
		if ( rs.next() )
		{	
			i = rs.getInt(1);
			p_uses = rs.getString(3);
			p_Desc = rs.getString(4);
			categorie = rs.getString(6);
			p_Rank = rs.getInt(7);
		
		
	
			String keyWord = "5765586965748666502846";
			keyWord = keyWord.substring(0, 16);
			byte[] keyValue = keyWord.getBytes();
			Key key = new SecretKeySpec(keyValue, "AES");
			Cipher c2 = Cipher.getInstance("AES");
			c2.init(Cipher.ENCRYPT_MODE, key);
			String ec = new String(Base64.encode(keyWord.getBytes()));
			p_Desc1 = new String(Base64.decode(p_Desc.getBytes()));
									
	    
	
%>



    </p>
    <table border="1" align="left" cellpadding="0" cellspacing="0" >
      <tr >
        <td width="187" rowspan="5" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
            <div align="center"><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:120px; height:120px;">
            </a> </div>
        </div></td>
        <td width="187" height="27" ><div align="center"><strong><span class="style17" style="color:#f69722">Post Name</span> </strong></div></td>
        <td><div align="center" class="style17"><%= p_Name%></div></td>
      </tr>
      <tr/><strong>
        </tr>
      </strong>
      
      <tr>
        <td width="187" height="27"><div align="center"><strong><span class="style17" style="color:#f69722">Categorie</span> </strong></div></td>
        <td><div align="center" class="style17"><%= categorie%></div></td>
      </tr>
      <tr>
        <td width="187" height="27"><div align="center"><strong><span class="style17" style="color:#f69722">Rating</span> </strong></div></td>
        <td><div align="center" class="style17"><%= p_Rank%></div></td>
      </tr>
      <tr>
        <td width="187" height="27"><div align="center" class="style17  style30 style12">Description </div></td>
        <td><div align="center" class="style17"><%= p_Desc1%></div></td>
      </tr>
      <tr> </tr>
      <tr>
        <td  width="187" valign="middle" height="41" style="color: #2c83b0;"><div align="left " class="style15 style11" style="margin-left:20px;"><strong>Reviewed By</strong></div></td>
        <td  width="187" columnspan="2" valign="middle" height="41" style="color: #2c83b0;"><div align="left " class="style15 style11" style="margin-left:20px;"><strong>Review Details</strong></div></td>
        <td  width="224" height="41" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11  style31" style="margin-left:20px;"> 
          <div align="center">Date</div>
        </div></td>
      </tr>
	  
	  
	  
<%
			String str1="select * from userreviews where p_name='"+p_Name+"' "; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(str1);
			while ( rs1.next() )
			{
				rec_By = rs1.getString(2);
				rec_Details = rs1.getString(3);
				rec_date = rs1.getString(6);
				
				Statement stmt2=connection.createStatement();
				String strQuery2 = "select requestfrom,requestto from request where ((requestfrom ='"+user+"' and requestto='"+rec_By+"') ||(requestfrom ='"+rec_By+"' and requestto='"+user+"'))and status ='Accepted' ";
				ResultSet rs2 = stmt2.executeQuery(strQuery2);
				if(rs2.next()==true)
				{
%>


      <tr>
        <td height="30"><div align="center" class="style9 style10 style12"><%=rec_By%></div></td>
        <td><div align="center" class="style9 style10 style12"><%=rec_Details%></div></td>
        <td><div align="center" class="style9 style10 style12"><%=rec_date%></div></td>
      </tr>
	  
	  
<%
				out.println("");
				}
			}
%>


      <tr>
        <td height="38"></td>
        <td></td>
        <td valign="middle"><div align="center">
          <p>&nbsp;</p>
          <p><a href="u_Add_Review.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>" class="style34 style33">Review</a> <span class="style33 style33"><a href="user_AddReview.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>"></a></span> on Post </p>
          <p>
		  <a href="u_Recommend_image_ToFriend.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>" class="style34 style33">Recommend</a> 
		  <span class="style33 style33">
		  <a href="u_Recommend_image_ToAll.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>"></a>		  </span> To Friend		  </p>
		  
		  
          <p><a href="u_Recommend_image_ToAll.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>" class="style34 style33">Recommend</a> <span class="style33 style33"><a href="user_RecommendToAll.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>"></a></span> To All </p>
          <p>&nbsp;</p>
         
		 
          </div></td>
      </tr>
      <tr>
        <td height="30"></td>
        <td></td>
        <td><div align="center"><a href="u_Give_Rate.jsp?p_Name=<%=p_Name%>&amp;categorie=<%=categorie%>" class="style34">Give Rate </a> on Image </div></td>
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
    <span class="style8"></span></p>
          <p>&nbsp;</p>
           
          <p><a href="u_View_Recommended_Images.jsp">Back</a></p>
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
