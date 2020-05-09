<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Request</title>
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
          <p align="center" class="style3"> <h2><span class="style20">User</span><span class="style18"> <%=application.getAttribute("user")%></span><span class="style20">'s  Page</span></h2>
          <p>&nbsp;</p>
          <p><table width="583" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="125" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
              <td  width="144" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><strong>Mobile</strong></div></td>
              <td  width="105" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Address</b></div></td>
              <td  width="85" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Gender</b></div></td>
              <td  width="105" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Status</b></div></td>
            </tr>
            <%
					  	String uname = (String)application.getAttribute("user");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username!='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								//s7=rs.getString(9);
								s8=rs.getString(10);
								
								String status="";
								String query1="select * from request where (requestfrom='"+uname+"' && requestto='"+s1+"') || (requestfrom='"+s1+"' && requestto='"+uname+"')"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								if(rs1.next())
								{
									String status1 = rs1.getString("status");
									if(status1.equals("Accepted"))
									{
										status="Friend";
									}else
									{
										status="Sent";
									}
								}else
								{
									status="Request";
								}
						
					%>
            <tr>
              <td  width="125" height="0" align="center" valign="middle" style="color:#000000;">&nbsp;&nbsp;
              <%out.println(s1);%></td>
              <td  width="144" height="0" align="center" valign="middle">&nbsp;&nbsp;
              <%out.println(s3);%></td>
              <td height="0" align="center"  valign="middle">&nbsp;&nbsp;
              <%out.println(s4);%></td>
              <td height="0" align="center"  valign="middle">&nbsp;&nbsp;
              <%out.println(s6);%></td>
              <%
						if(status.equalsIgnoreCase("Request"))
						{
						
						%>
              <td  width="105" valign="middle" height="0" style="color:#000000;"align="center"><a href="updaterequest.jsp?rname=<%=s1%>"><%=status%></a>&nbsp;</td>
              <%
						}
						else
						{
						%>
              <td  width="19" valign="baseline" height="0" style="color:#000000;"align="center"><%out.println(status);%>
              &nbsp;</td>
              <%
						}
						%>
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
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
          </table></p>
          </span></p>
          <p>&nbsp;</p>
          <p><a href="u_main.jsp">Back</a></p>
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
