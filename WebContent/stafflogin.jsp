<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Library</title>
<meta name="keywords"
	content="free css templates, education, school, college, university, templatemo.com" />
<meta name="description"
	content="Education template is for academic related websites" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />


<SCRIPT LANGUAGE="JavaScript">
	function dil(form) {
		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Tum alanlari doldurun")
				document.F1.accountno.focus()
				return false
			}
		}

		if (isNaN(document.F1.accountno.value)) {
			alert("Accountno must  be  number & can't be null")
			document.F1.accountno.value = ""
			document.F1.accountno.focus()
			return false
		}
		if (!isNaN(document.F1.username.value)) {
			alert("User Name  must  be  char's & can't be null")
			document.F1.username.value = ""
			document.F1.username.focus()
			return false
		}

		if (!isNaN(document.F1.password.value)) {
			alert("Password  must  be  char's & can't be null")
			document.F1.password.value = ""
			document.F1.password.focus()
			return false
		}

		return true
	}
</SCRIPT>

</head>
<body>
	<div id="templatemo_header_wrapper">
		<div id="templatemo_header"></div>

	</div>
	<!-- end of templatemo_menu_wrapper -->

	<div id="templatemo_menu_wrapper">
		<div id="templatemo_menu">

			<ul>
				<li><a href="index.html">Anasayfa</a></li>
				<li><a href="admin.jsp">Admin</a></li>
				<li><a href="member.jsp">Kutuphane Uyesi</a></li>
				<li><a href="contactus.jsp">iletisim</a></li>
			</ul>

		</div>
		<!-- end of templatemo_menu -->
	</div>

	<div id="templatemo_content_wrapper">

		<div id="templatemo_content">

			<div class="content_box">

				<td valign="top">
					<%
					if (request.getAttribute("sorrynewstaff") != null) {
						out.print("<div>");
						out.print("<font color='blue'><font size='4'>" + request.getAttribute("sorrynewstaff") + "");

						out.print("</div>");
					}
					%> <%

 %>
					<table width="300" height="100" border="0" cellspacing="10"
						cellpadding="0" align="center">
						<%
						String userName = null;
						Cookie[] cookies = request.getCookies();
						if(cookies !=null){
						for(Cookie cookie : cookies){
							if(cookie.getName().equals("user")) userName = cookie.getValue();
						}
						}
						if(userName == null) response.sendRedirect("index.html");
						else if(userName.equals("staff1")){ %>
						<h3>Merhaba <%=userName %>, Login Success.</h3>
						<br>

						<br><a href='bookdetails.jsp'> Kitap Listesi </a><br>
						<br><a href='updatebookdetails.jsp'> Kitap Ekle </a><br>
						

						<%  }  %>
					</table>
					<%

					%> <%-- </table>--%> <%@ page import="java.sql.*"%>
					<%@ page import="java.io.*"%> <%@ page
						import="javax.servlet.*"%> <%@ page
						import="com.library.*"%> <%--</table>--%>
					
				<div class="cleaner"></div>
			</div>
			<div class="content_box_bottom"></div>

		</div>
		<!-- end of content -->

		<div class="cleaner"></div>

	</div>

	
</body>
</html>