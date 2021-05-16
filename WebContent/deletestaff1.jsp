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
		   alert("Fill out all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Accountno must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
   }
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
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
                    <li><a href="bookdetailsforbookdetails.jsp">Kitap Detaylari</a></li>
                    <li><a href="contactus.jsp">iletisim</a></li>
                </ul>    	
     
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper">

	<div id="templatemo_content">
    
    	<div class="content_box">
    
    	<td valign="top">
    		<% 
%>
<table><%
         String ph=request.getParameter("staffid");
        
		 double id=Double.parseDouble(ph);
		
      		Connection con=GetCon.getCon();
		
		   
		
		try {
			PreparedStatement ps=con.prepareStatement("delete  from NEWSTAFFMEMBER where id = '"+id+"' ");
			
			ResultSet rs=ps.executeQuery();
           			
		    if(rs.next()){          			
	        out.print("your Details has been deleted");
			request.setAttribute("deleted","your Details has been deleted");
			%>			
			<jsp:forward page="showstaff.jsp"></jsp:forward> 
			<% 
				
			} else
			{
			out.println("your given id is wrong");
			request.setAttribute("wrong","your given id is wrong");	
			}
		}
		    catch (SQLException e) {
			e.printStackTrace();
		    }
		
		
		%>			
			<jsp:forward page="deletestaff.jsp"></jsp:forward> 
			<% 
		//}
		
		%></table><%
%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.library.*" %>
    	
			</td>
        
        	<div class="cleaner"></div>
        </div>
        
       <div class="content_box_bottom"></div>
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>

</body>
</html>