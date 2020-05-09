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
          <p align="center" class="style3">View All Uploaded Images !!!</p>
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3"> <table width="601" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="47" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>SI NO</strong></div></td>
            <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Post_Image</strong></div></td>
            <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Image_Name</strong></div></td>
            <td  width="112" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Uses</strong></div></td>
            <td  width="114" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Categorie</strong></div></td>
            <td  width="82" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5"><strong>Rate</strong></div></td>
          </tr>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
          <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=1,j=0;
						try 
						{
						   	String query="select * from posts order by rank desc"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(6);
								s4=rs.getString(7);
							
								
					%>
          <tr>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
            <td width="116" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="post_Pic.jsp?id=<%=j%>" style="width:90px; height:90px;" />
            </a> </div></td>
			
			
      
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5"> <span class="style19"> <a href="a_Image_desc.jsp?p_Name=<%=s1%>">
                  <%out.println(s1);%>
                  </a></span>
                    <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s2);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5"> <span class="style19">
                  <%out.println(s4);%>
                  </span>
                    <p>&nbsp; </p>
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
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
          </tr>
        </table></p>
          <p>&nbsp;</p>
		 

          <p>&nbsp;</p>
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
