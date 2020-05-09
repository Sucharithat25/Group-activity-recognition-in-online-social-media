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
.style5 {font-size: 18px}
.style6 {color: #fc6400}
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
          <p align="center" class="style3">Add Images !!!</p>
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3"><%@page import ="java.util.*"%>
          <%@ include file="connect.jsp" %>
          <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select categorie FROM categories"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("categorie"));
		
	   }
	   
		
		
%>
        </p>
        <form action="a_Add_Images1.jsp" method="post" enctype="multipart/form-data" id="s" ">
          <table width="483" border="0" align="center">
            <tr>
              <td width="221" height="33"><div align="justify" class="style5"><span class="style8 style6">Select Image Categorie </span></div></td>
              <td width="252"><label>
                <select id="s1" name="categorie">
                  <option>--Select--</option>
                  <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
                  <option><%= a1.get(i)%></option>
                  <%}%>
                </select>
              </label></td>
            </tr>
            <tr>
              <td height="36"><div align="justify" class="style5"><span class="style8 style6"> Image Name </span> </div></td>
              <td><label>
                <input type="text" id="t1" name="name" />
              </label></td>
            </tr>
            <tr>
              <td height="35"><div align="justify" class="style5"><span class="style8 style6">Image Uses </span></div></td>
              <td><label>
                <input type="text" id="t3" name="uses" />
              </label></td>
            </tr>
            <tr>
              <td height="51"><div align="justify" class="style5"><span class="style8 style6"> Description </span></div></td>
              <td><label>
                <textarea name="desc" cols="25" rows="6" id="t2"></textarea>
              </label></td>
            </tr>
            <tr>
              <td height="38"><div align="justify" class="style5"><span class="style8 style6"> Image </span></div></td>
              <td><input type="file" id="userImage" name="image" style="width:100%"></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="26"><div align="right">
                  <input type="submit" name="Submit" value="Embed and Add Post" />
              </div></td>
              <td></td>
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
