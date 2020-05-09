<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Searched History</title>
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
.style7 {color: #FFFF00}
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
          <p align="center" class="style3">View All Searched History!!!</p>
          <p>&nbsp;</p>
      <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr>
          <td  width="55" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9 style22 style15"><strong>SI NO</strong></div></td>
          <td  width="104" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9 style22 style15"><strong>Searched By</strong></div></td>
          <td  width="100" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9 style22 style15"><strong>Post Name </strong></div></td>
          <td  width="101" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9 style22 style15"><strong>Categorie</strong></div></td>
          <td  width="109" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9 style22 style15"><strong>Keyword</strong></div></td>
          <td  width="115" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9 style22 style15"><strong>Date</strong></div></td>
        </tr>
        <%@ include file="connect.jsp" %>
        <%
					  
						
						try 
						{
						   
							
							String p_Name="",categorie="",keyword="",date="",user="";
							int i=1;
						    
						   	String query="select * from search "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								user=rs.getString(2);
								p_Name=rs.getString(3);
								categorie=rs.getString(4);
								keyword=rs.getString(5);
								date=rs.getString(6);
								
					
					%>
        <tr>
          <td height="0"  valign="baseline" bgcolor="#FF0000"><div align="center" class="style23 style9 style7">
                <div align="center" class="style23">
                  <%out.println(i);%>
                </div>
              </div></td>
          <td height="0"  valign="baseline" bgcolor="#FF0000"><div align="center" class="style23 style9 style10 style7">
                <%out.println(user);%>
            </div></td>
          <td height="0"  valign="baseline" bgcolor="#FF0000"><div align="center" class="style23 style9 style7">
                <%out.println(p_Name);%>
            </div></td>
          <td height="0"  valign="baseline" bgcolor="#FF0000"><div align="center" class="style23 style9 style7">
                <%out.println(categorie);%>
            </div></td>
          <td height="0"  valign="baseline" bgcolor="#FF0000"><div align="center" class="style23 style9 style7">
                <%out.println(keyword);%>
            </div></td>
          <td height="0"  valign="baseline" bgcolor="#FF0000"><div align="center" class="style23 style9 style7">
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
          <td  valign="baseline" height="20">&nbsp;</td>
          <td  valign="baseline" height="20">&nbsp;</td>
          <td  valign="baseline" height="20">&nbsp;</td>
          <td  valign="baseline" height="20">&nbsp;</td>
          <td  valign="baseline" height="20">&nbsp;</td>
          <td  valign="baseline" height="20">&nbsp;</td>
        </tr>
      </table>
      </p>
       
		 

          <p align="center"><a href="a_main.jsp">Back</a></p>
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
