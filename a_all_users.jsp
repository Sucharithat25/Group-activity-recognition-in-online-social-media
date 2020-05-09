<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Users</title>
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
.style9 {font-size: 20px}
.style11 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style12 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #0000FF; }
.style13 {color: #000000}
.style14 {font-family: "Times New Roman", Times, serif}
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
        <div id="coin-slider"> <a href="#"><img src="https://media.istockphoto.com/vectors/social-network-scheme-which-contains-people-connected-to-each-other-vector-id640162840" width="960" height="320" alt="" /></a><a href="#"><img src="https://s27389.pcdn.co/wp-content/uploads/2017/06/AdobeStock_81441025-1-1024x594.jpeg" width="960" height="320" alt="" /></a> <a href="#"><img src="https://www.bmmagazine.co.uk/wp-content/uploads/2017/06/shutterstock_387274792-1-e1498567304954.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p align="center" class="style3">View All Users and Authorise </p>
          <p>&nbsp;</p>
		  
		  



<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="35" height="54" bgcolor="#9eb8dd"><div align="center" class="style12">Id  </div></td>
		   <td width="90" bgcolor="#9eb8dd"><div align="center" class="style12">User Image  </div></td>
           <td width="115" bgcolor="#9eb8dd"><div align="center" class="style12">User Name  </div></td>
           <td width="97" bgcolor="#9eb8dd"><div align="center" class="style12">User Full Details</div></td>
		   <td width="67" bgcolor="#9eb8dd"><div align="center" class="style12">Status</div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from user "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);//mob
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8); // gen
								s9=rs.getString(9); //pincode
								s10=rs.getString(10); // status
		
		
		%>
                    
                    <tr>
                      <td bgcolor="#00FFFF"><div align="center" class="style6 style11 style12 style5 style7 style9 style13 style14"><%=j%></div></td>
                      <td bgcolor="#00FFFF" align="center"><input  name="image" type="image" style="width:110px; height:90px;" src="u_Pic.jsp?id=<%=i%>" /></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style6 style11 style12 style5 style7 style9 style13 style14"><%=s2%></div></td>
					  <td width="108" align="center" bgcolor="#00FFFF"><a href="a_user_profile.jsp?user=<%=s2%>&type=<%="one"%>" class="style11">Click here</a></td>
					  <%
						if(s10.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td bgcolor="#00FFFF"><div align="center" class="style6 style11 style12 style5 style7 style9 style13 style14">
                <a href="u_Status.jsp?id=<%=i%>" class="style16 ">waiting</a> </div></td>
              <%
						}
						else
						{
						%>
              <td bgcolor="#00FFFF"><div align="center" class="style6 style11 style12 style5 style7 style9 style13 style14">
                    <%=s10%>
                </div></td>
              <%
						}
						%>
	      </tr>
					  
        <%
		
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>

          <p align="right"><a href="a_main.jsp" class="style9">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="a_main.jsp"><span>Admin Main</span></a></li>
            <li><a href="a_login.jsp"><span>Log Out</span></a></li>
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
