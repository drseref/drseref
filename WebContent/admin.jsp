<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Library</title>
<meta name="keywords" content="free css templates, education, school, college, university, templatemo.com" />
<meta name="description" content="Education template is for academic related websites" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />


<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Tüm alanları doldurunuz")
		   document.F1.username.focus()
		   return false
		}
   }

  
   if(!isNaN(document.F1.username.value))
   {
       alert("Kullanıcı adı boş olamaz")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Şifre boş olamaz")
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
    <div id="templatemo_header"> </div> 

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
    	
    	<%
						String userName = null;
						Cookie[] cookies = request.getCookies();
						if(cookies !=null){
						for(Cookie cookie : cookies){
							if(cookie.getName().equals("user")) userName = cookie.getValue();
						}
						}
						if(userName == null) { %>

				  <%  out.print("<font color=blue>ADMIN LOGIN Sayfasina Hosgeldiniz");
	%>
    
    	<form name=F1 onSubmit="return dil(this)" action="LoginServlet" method="post" >
				   <table height="230" cellspacing="10" cellpadding="8">	
				  <%if(request.getAttribute("aa")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='3'>"+request.getAttribute("aa")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
	    			<tr><td>Kullanici Adi:</td><td> <input type="text" name="username"/></td></tr>
					
					<tr><td>Sifre:</td><td> <input type="password" name="password"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="Gonder"/>
	            </td></tr>
                   
             	</table>

			</form>
			<%  } else if(userName.equals("admin")){ %>
			<h3>Merhaba <%=userName %>, Login Success.</h3>
			<br>

			<br><a href='newstaff.jsp'> Create new staff </a><br>
			<br><a href='showstaff.jsp'> Show staff deatils </a><br>
			<br><a href='bookdetails.jsp'> Show Book deatils </a><br>

			<%  }   %>
  		
			</td>
	
	       	<div class="cleaner"></div>
        </div><div class="content_box_bottom"></div>
        
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>
</body>
</html>