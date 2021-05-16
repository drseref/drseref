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
		   document.F1.username.focus()
		   return false
		}
   }
 if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }
  
    if(document.F1.password.value!=document.F1.repassword.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F1.repassword.value=""
	   document.F1.repassword.focus()	
	   return false
	}
	
	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value >9999999999 )
	   {
		 alert("ye kabhi nhi aayegi")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.phone.value=""
	   return false
   }
	
	
	

    if(!isNaN(document.F1.syd.value))
   {
       alert("designation  must  be  char's & can't be null")
	   document.F1.syd.value=""
	   document.F1.syd.focus()
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
    	
				  <%  out.print("<font color=blue>Kayit Formuna Hos Geldiniz<br><br>");
	%>
    
   		  		
		<form  name=F1 onSubmit="return dil(this)" action="CreateServlet" >
			 <table height="350" cellspacing="5" cellpadding="3">	
			  
					<tr><td>Kullanici Adi:</td><td> <input type="text" name="username"/></td></tr>
					<tr><td>Sifre:</td><td> <input type="password" name="password"/></td></tr>
					<tr><td>Yeniden Sifre:</td><td> <input type="password" name="repassword"/></td></tr>
					<tr><td>Telefon:</td><td> <input type="text" name="phone"/></td></tr>
                 	<tr><td>Adres:</td><td> <textarea rows=4 cols=40 wrap=virtual name="adderess"></textarea></td></tr>
					
					<TR>
	<TD> Unvan:</TD> <TD> <SELECT NAME="syd"> 
									 <option>student
<option>professor
<option>Associate-Professor
<option>lecturer
<option>non-teaching staff
									 
									</SELECT> </TD>

</TR>
                   
					<tr><td></td><td><input type="submit" value="Submit"/>
					
					</td></tr>
					</table>
               		</form>
			        
        	<div class="cleaner"></div>
        </div>
        
       
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>

</body>
</html>