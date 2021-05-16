<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Education</title>
<meta name="keywords" content="free css templates, education, school, college, university, templatemo.com" />
<meta name="description" content="Education template is for academic related websites" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out this Fields")
		   document.F1.bookid.focus()
		   return false
		}
   }

   if(isNaN(document.F1.bookid.value))
   {
       alert("Accountno must  be  number & can't be null")
	   document.F1.bookid.value=""
	   document.F1.bookid.focus()
	   return false
   }
  
  
   
   return true   
}
</SCRIPT>

</head>
<body>
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
    	
    </div> <!-- end of templatemo_header -->

</div> <!-- end of templatemo_menu_wrapper -->

<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu">
        
        <ul>
           <li><a href="index.html">Anasayfa</a></li>
                    <li><a href="admin.jsp">Admin</a></li>
                    <li><a href="member.jsp">Kutuphane Uyesi</a></li>
                    <li><a href="contactus.jsp">iletisim</a></li>
               </ul>    	
     
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper">

	  
    <div id="templatemo_content">
    
    	<div class="content_box">
    
    	<td valign="top">
    	
  	   			<form name=F1 onSubmit="return dil(this)" action="issuenewbook1.jsp" >
				 <!--  <table cellspacing="5" cellpadding="3">	 -->
				  <table width="300" height="250" cellspacing="5" cellpadding="3" align="center">
				  
				  <%if(request.getAttribute("wrong")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("wrong")+"");
			
			out.print("</div>"); 
			}
			
			 %>
				  
				
					<tr><td>BOOK ID:</td><td> <input type="text" name="bookid"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="Submit"/>
					
					</td></tr>
					</table>
               		</form>
		
 

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.library.*" %>
  
         	
          
				</form>
  		
			</td>
	
        
        	<div class="cleaner"></div>
        </div>
    
    <div class="cleaner"></div>

</div>

</body>
</html>