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
.style3 {font-size: 35px; color: #fc6400; }
.style8 {color: #000000}
.style9 {color: #FFFFFF}
.style10 {color: #FFFF00}
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
          <p align="center" class="style3">View My Search History</p>
          <p align="center" class="style3">&nbsp;</p>
          <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="68" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style27 style15 style7 style25 style10"><strong>SI NO</strong></div></td>
            <td  width="110" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style27 style15 style7 style25 style10"><strong>Post Name </strong></div></td>
            <td  width="117" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style27 style15 style7 style25 style10"><strong>Categorie</strong></div></td>
            <td  width="146" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style27 style15 style7 style25 style10"><strong>Searched Keyword</strong></div></td>
            <td  width="145" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style7 style25 style27 style10"><strong>Date</strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						
						try 
						{
						    String user = (String)application.getAttribute("user");
							
							String p_Name="",categorie="",keyword="",date="";
							int i=1;
						    
						   	String query="select * from search where user='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								p_Name=rs.getString(3);
								categorie=rs.getString(4);
								keyword=rs.getString(5);
								date=rs.getString(6);
								
					
					%>
          <tr>
            <td height="0" align="center"  valign="middle" bgcolor="#FF00FF"><div align="center" class="style32 style9">
                  <div align="center" class="style32">
                    <%out.println(i);%>
                  </div>
                </div></td>
            <td height="0" align="center"  valign="middle" bgcolor="#FF00FF"><div align="center" class="style32 style9">
                  <%out.println(p_Name);%>
              </div></td>
            <td height="0" align="center"  valign="middle" bgcolor="#FF00FF"><div align="center" class="style32 style9">
                  <%out.println(categorie);%>
              </div></td>
            <td height="0" align="center"  valign="middle" bgcolor="#FF00FF"><div align="center" class="style32 style9">
                  <%out.println(keyword);%>
              </div></td>
            <td height="0" align="center"  valign="middle" bgcolor="#FF00FF"><div align="center" class="style32 style9">
                  <%out.println(date);%>
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
            <td height="0" align="center"  valign="middle">&nbsp;</td>
            <td height="0" align="center"  valign="middle">&nbsp;</td>
            <td height="0" align="center"  valign="middle">&nbsp;</td>
            <td height="0" align="center"  valign="middle">&nbsp;</td>
            <td height="0" align="center"  valign="middle">&nbsp;</td>
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
