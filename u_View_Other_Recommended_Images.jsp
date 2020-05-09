<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
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
.style9 {color: #FFFFFF}
.style10 {color: #FF0000}
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
          <h2> <pre class="style21"><span class="style24">Other User Recommends on Products </span> </h2>

</pre>
      <table width="561" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr>
          <td  width="46" height="34" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style5 style25 style9"><strong>SI NO</strong></div></td>
          <td  width="150" height="34" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style6 style5 style25 style9"><strong>Product_Name</strong></div></td>
          <td  width="149" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style25 style6 style5 style9"><strong>Recommended By </strong></div></td>
          <td  width="206" height="34" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style25 style6 style5 style9"><strong>Recommend To </strong></div></td>
        </tr>
        <%@ include file="connect.jsp" %>
        <%@ page import="java.sql.*,java.io.*,java.util.*" %>
        <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=1;
						try 
						{
								String uname1 = (String)application.getAttribute("user");
								Statement stmt1=connection.createStatement();
								String strQuery1 = "select distinct(recommendfrom),p_name,recommendto from postrecommendtofriend where recommendfrom !='"+uname1+"'";
								ResultSet rs1 = stmt1.executeQuery(strQuery1);
												
								
					   			while ( rs1.next() )
								{
										s1=rs1.getString(2);
										s2=rs1.getString(1);
										s3=rs1.getString(3);
							
								
								
					
						
					%>
        <tr>
          <td height="0" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style5 style26 style10">
                <%out.println(i);%>
                <p>&nbsp; </p>
              </div></td>
          <td height="0" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style5 style26 style10">
                <span class="style19">
              <a href="u_More_Image_Desc1.jsp?p_Name=<%=s1%>" class="style33 style34"><strong><%out.println(s1);%></strong></a>  
               </span>
                <p>&nbsp; </p>
              </div></td>
          <td align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style5 style26 style10">
            <%out.println(s2);%>
            <p>&nbsp;</p>
          </div></td>
          <td height="0" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style5 style26 style10">
                <%out.println(s3);%>
                <p>&nbsp;</p>
              </div></td>
        </tr>
        <%
					i=i+1;
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        <tr>
          <td  valign="baseline" height="0">&nbsp;</td>
          <td  valign="baseline" height="0">&nbsp;</td>
          <td  valign="baseline">&nbsp;</td>
          <td  valign="baseline" height="0">&nbsp;</td>
        </tr>
      </table>
		
		  <p align="center"><a href="u_main.jsp">Back</a></p>
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
