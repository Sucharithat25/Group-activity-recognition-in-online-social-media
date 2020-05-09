<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Friends</title>
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
.style9 {
	color: #FF0000;
	font-weight: bold;
}
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
          <p align="left" class="style3">Search Friends.... <span class="style8"></span></p>
		  
		  
		    <form action="u_Search_Friends.jsp" method="post">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p><span class="style9">Enter Friend Name:</span>
              <input type="text" name="keyword" />
            </p>
            <p>
              <input class="art-button" name="submit" type="submit" value="Search" />
            </p>
            </p>
          </form>
		  
          <p>&nbsp;</p>
         
		  
		  <p><a href="u_main.jsp">Back</a></p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		   <%
	  			
						String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String uname = (String)application.getAttribute("user");
						String username = request.getParameter("keyword");
						int i=0;
						try 
						{
						
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							Date now = new Date();
										
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
						
						
						if(username!=null){
						   	
							%>
            <h2><span>Searched <span class="style19">Friend Details </span></span></h2>
            <%
							if(!username.equalsIgnoreCase(""))
								{
									Statement st3 = connection.createStatement();
									String query3 ="insert into friendsearch(username,keyword,dt) values('"+uname+"','"+username+"','"+dt+"')";
									st3.executeUpdate (query3); 	   
								}
							
							
							
							String query="select * from user where  username!='"+uname+"' and username  LIKE '%"+username+"%' "; 
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
								s7=rs.getString(9);
								s8=rs.getString(10);
	  							
								
	  %>
            <table border="3" width="518" style="margin:5px 10px 10px 5px;">
              <tr>
                <td rowspan="8" width="148" ><input  name="image" type="image" src="userimages.jsp?imgid=<%=i%>" style="width:150px; height:200px;" class="image_wrapper" />                </td>
                <td width="118"><span style="margin-left:20px; color:#006633;"><strong>User Name:</strong></span></td>
                <td width="249" style="margin-left:20px; color:#000000;"><%=s1%></td>
              </tr>
              <tr>
                <td><span style="margin-left:20px; color:#006633;"><strong>E-Mail:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><%=s2%></td>
              </tr>
              <tr>
                <td><span style="margin-left:20px; color:#006633;"><strong>Mobile:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><%=s3%></td>
              </tr>
              <tr>
                <td><span style="margin-left:20px; color:#006633;"><strong>Address:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><%=s4%></td>
              </tr>
              <tr>
                <td><span style="margin-left:20px; color:#006633;"><strong>Date of Birth:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><%=s5%></td>
              </tr>
              <tr>
                <td><span style="margin-left:20px; color:#006633;"><strong>Gender:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><%=s6%></td>
              </tr>
              <tr>
                <td><span style="margin-left:20px; color:#006633;"><strong>Pincode:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><%=s7%></td>
              </tr>
              <tr>
                <td><span style="margin-left:20px; color:#006633;"><strong>Status:</strong></span></td>
                <td style="margin-left:20px; color:#000000;"><%=s8%><span style="float:right">
                  <a href="updaterequest.jsp?rname=<%=s1%>">Send Request</a>
                </a></span></td>
              </tr>
            </table>
            <%
				  			}
				  
	  						}
							}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
	        </p>
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
