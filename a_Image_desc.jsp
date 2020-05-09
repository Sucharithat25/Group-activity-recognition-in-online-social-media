<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
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
.style6 {color: #fc6400}
.style7 {color: #fc6400; font-size: 18px; }
.style8 {font-size: 24px}
.style9 {font-size: 24px; color: #FF0000; }
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
      <p class="style9">Selected Image Details !! </p>
      <div class="mainbar">
        <div class="article">
          <p align="center" class="style3"> <%@ include file="connect.jsp" %>
          <%@ page import="java.io.*"%>
          <%@ page import="java.util.*" %>
          <%@ page import="java.util.Date" %>
          <%@ page import="com.oreilly.servlet.*"%>
          <%@ page import ="java.text.SimpleDateFormat" %>
          <%@ page import ="javax.crypto.Cipher" %>
          <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
          <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
          <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
          <%
	
      	
	

      	try 
	{
      		
      	   String p_Desc="",p_Desc1="",p_Categorie="";
		   String p_uses="";
      		
      	   String p_Name = request.getParameter("p_Name");
           
           String str="select * FROM posts where i_name='"+p_Name+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
          
	   if( rs.next() )
	   {
			p_uses = rs.getString(3);
			p_Desc = rs.getString(4);
			p_Categorie = rs.getString(6);
			
				
				String keys = "ef50a0ef2c3e3a5f";
			    byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
				String keyy = String.valueOf(keyValue);
				
      	         p_Desc1 = new String(Base64.decode(p_Desc.getBytes()));
		
	   }
	   
		
		
%>
        </p>
        <form action="admin_AddPosts1.jsp" method="post" enctype="multipart/form-data" id="s" ">
          <table width="501" border="0" align="center">
            <tr>
              <td width="226" height="33"><div align="center" class="style6 style8">
                <div align="justify"><span class="style6">Categorie </span></div>
              </div></td>
              <td width="265"><label>
                <input name="text" type="text" id="t3" value="<%=p_Categorie%>" readonly="readonly" />
              </label></td>
            </tr>
            <tr>
              <td height="35"><div align="center" class="style7 style8">
                <div align="justify"><span class="style6">User</span></div>
              </div></td>
              <td><label>
                <input name="text2" type="text" id="t3" value="<%=p_uses%>" size="50" maxlength="100" readonly="readonly" />
              </label></td>
            </tr>
            <tr>
              <td height="80"><div align="center" class="style7 style8">
                <div align="justify"><span class="style6"> Description </span></div>
              </div></td>
              <td><label>
                <textarea name="desc" id="t2" rows="3" cols="25" readonly="readonly"><%=p_Desc1%></textarea>
              </label></td>
            </tr>
          </table>
        </form>
        <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%></p>
          <p>&nbsp;</p>
		  
		 
          <p><a href="a_main.jsp">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
            <li><strong><a href="a_main.jsp">Home</a></strong></li>
            <li><strong><a href="a_login.jsp">Log Out</a></strong></li>
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
