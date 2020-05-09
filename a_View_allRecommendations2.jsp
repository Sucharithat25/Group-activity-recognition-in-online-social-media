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
.style6 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
.style9 {color: #FF0000; font-weight: bold; }
.style10 {font-weight: bold}
.style11 {font-weight: bold}
.style12 {color: #FFFFFF}
.style13 {font-size: 24px}
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
          <p align="center" class="style3"><span class="style6 style5"><span class="style13">All Recommendations on post</span></span></p>
          <p align="center" class="style3"><span class="style6 style5"><br />
            </span><span class="style29"><%=request.getParameter("p_Name")%></span></p>
        </div>
      <div class="entry">
        <div id="div">
          <div class="templatemo_h_line"></div>
          <p align="left">
            
            <%
      	try 
	{
	
	String p_Name = request.getParameter("p_Name");
	String m_Categorie = request.getParameter("categorie");
	String query1="select * from postrecommendtofriend where p_name='"+p_Name+"' ";
	Statement stt1 = connection.createStatement();
	ResultSet rss1 = stt1.executeQuery(query1);
	if(rss1.next())
	{
	
           String Keyword="",user="",p_Desc="",p_Desc1="",categorie="",rec_By="",rec_To="",rec_Details="",rec_date="";
	       String strDate="",strTime="",dt="",p_Price="";
		   int p_Rank=0,i = 0;
		   
		    
			
		  
		   String str="select * from posts where i_name='"+p_Name+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
		   
	if ( rs.next() )
	   {
	   
		i = rs.getInt(1);
		p_Price = rs.getString(3);
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
          <table border="1" align="center" cellpadding="0" cellspacing="0" >
            <tr >
              <td width="160" rowspan="5" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                  <div align="center"><a class="#" id="img1" href="#" >
                    <input  name="image" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:120px; height:120px;">
                  </a> </div>
              </div></td>
              <td width="187" height="27" ><div align="center" class="style14 style9 style4 style7">
                <div align="center"><span class="style17">Post Name</span> </div>
              </div></td>
              <td><div align="center" class="style19"><span class="style17"><%= p_Name%></span></div></td>
            </tr>
            <tr/><div align="center">
                    <span class="style9">
                    </tr>
                    </span>
              
            </div>
            
            <tr>
              <td width="187" height="27"><div align="center" class="style14 style9 style4 style10">
                <div align="center"><span class="style17">Categorie</span> </div>
              </div></td>
              <td><div align="center" class="style19"><span class="style17"><%= categorie%></span></div></td>
            </tr>
            <tr>
              <td width="187" height="27"><div align="center" class="style14 style9 style4 style11">
                <div align="center"><span class="style17">Rate</span></div>
              </div></td>
              <td><div align="center" class="style19"><span class="style17"><%= p_Rank%></span></div></td>
            </tr>
            <tr>
              <td width="187" height="27"><div align="center" class="style9 style14"><span class="style17" style="color:#FF0000"><strong>Description </strong></span></div></td>
              <td><div align="center" class="style19"><span class="style17"><%= p_Desc1%></span></div></td>
            </tr>
            <tr> </tr>
            <tr>
              <td  width="160" height="41" valign="middle" bgcolor="#0000FF" class="style12" style="color: #2c83b0;"><div align="left " class="style14 style15 style9 style8 style12" style="margin-left:20px;">
                <div align="center"><strong>Recommended By</strong></div>
              </div></td>
              <td  width="187" height="41" valign="middle" bgcolor="#0000FF" class="style12" style="color: #2c83b0;" columnspan="2"><div align="left " class="style14 style15 style9 style8 style12" style="margin-left:20px;">
                <div align="center"><strong>Recommended To </strong></div>
              </div></td>
              <td  width="140" height="41" valign="middle" class="style12" style="color: #2c83b0;" columnspan="2">&nbsp;</td>
            </tr>
           
            <%
           String str1="SELECT   recommendfrom,recommendto FROM postrecommendtofriend where p_name='"+p_Name+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);

	while ( rs1.next() )
	   {
						 rec_By = rs1.getString(1);
						 rec_To = rs1.getString(2);
						 
							 %>
							<tr>
							  <td height="30" bgcolor="#FFFF00"><div align="center" class="style19 style20 style16 style17 style4"><%=rec_By%></div></td>
							  <td bgcolor="#FFFF00"><div align="center" class="style19 style20 style16 style17 style4"><%=rec_To%></div></td>
							  <td>&nbsp;</td>
							</tr>
							<%
						
						out.println("");
	}
						%>
            <tr>
              <td height="30"></td>
              <td></td>
              <td></td>
            </tr>
            <%
						
						}
						
						}
						else
						{
						%>
            <p class=" style9">No Recommendations Found on Post<span class="style12"> <%=p_Name%> <%=m_Categorie%></span></p>
            <div align="right"><a href="admin_AllRecommendedPosts1.jsp?categorie=<%=m_Categorie%>">Back</a></div>
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
