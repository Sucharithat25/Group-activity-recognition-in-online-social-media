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
.style5 {color: #FFFFFF}
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
          <p align="center" class="style3">View Image Searched Details..... </p>
          <p align="left" class="style19">&nbsp;</p>
      <table width="896" border="3"  cellpadding="0" cellspacing="0"  style="margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
          <td  width="119" height="30" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><span class="style5 style25"><strong>ID</strong></span></td>
          <td  width="131" height="30" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><span class="style5 style25"><strong>RequestFrom</strong></span></td>
          <td  width="126" height="30" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><span class="style5 style25"><strong>RequestTo</strong></span></td>
          <td  width="103" height="30" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><span class="style5 style25"><strong>Date</strong></span></td>
          <td  width="128" height="30" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><span class="style5 style25"><strong>Status</strong></span></td>
        </tr>
        <%@ page import="java.sql.*,java.util.Random" %>
        <%@ include file="connect.jsp" %>
        <%
					  	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from request"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
														
						
					%>
        <tr>
          <td  width="119" height="46" align="center" valign="middle" bgcolor="#FFFF00" style="color:#000000;">&nbsp;&nbsp;
              <%out.println(i);%></td>
          <td  width="131" height="46" align="center" valign="middle" bgcolor="#FFFF00">&nbsp;&nbsp;
              <%out.println(s1);%></td>
          <td height="46" align="center"  valign="middle" bgcolor="#FFFF00">&nbsp;&nbsp;
              <%out.println(s2);%></td>
          <td height="46" align="center"  valign="middle" bgcolor="#FFFF00">&nbsp;&nbsp;
              <%out.println(s3);%></td>
          <td height="46" align="center"  valign="middle" bgcolor="#FFFF00">&nbsp;&nbsp;
              <p>
                <%out.println(s4);%>
              </p>
            <p>&nbsp;</p></td>
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
        <tr>
          <td  valign="baseline" height="29">&nbsp;</td>
          <td  valign="baseline" height="29">&nbsp;</td>
          <td  valign="baseline" height="29">&nbsp;</td>
          <td  valign="baseline" height="29">&nbsp;</td>
          <td  valign="baseline" height="29">&nbsp;</td>
        </tr>
      </table>
      </p>
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
