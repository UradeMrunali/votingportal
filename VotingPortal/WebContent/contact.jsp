<%@page import="model.VotingBin" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/style.css" />
 <style>
    body {
    position: relative;
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEIvzTo4KbpuDpjB7-R-TdltVYJSbb-6kRIEmTdN3aTVQRhItwdUrIAr6X7ZukvIxRAA4&usqp=CAU');
    background-size: 1000px;
    background-position: center;
    margin: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    }
    
    
</style>
<title>Voting Portal</title>
<%
		String userName = null;
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
			for(Cookie cookie : cookies){
			    if(cookie.getName().equals("username"))
			    	userName = cookie.getValue();
			}
		}
		if(userName == null)
			response.sendRedirect("login.jsp");
	%>
</head>
<body>
	<div id="page">
		<div id="header">
			<div id="section">
				<div
					style="text-align: center; color: white; margin: 0px 0 0px 324px;">
					<h1>Voting Portal</h1>
					<h3>A project by Mrunali Urade</h3>
				</div>
			</div>
			<ul>
			<li><a class="welcome"><b>Welcome! <%=userName %></b></a></li>
				<li><a href="index.jsp">Project Description</a></li>
				<li><a href="vote.jsp">Vote Here</a></li>
				<li><a href="vote-stats.jsp">Voting Statistics</a></li>
				<li class="current"><a href="contact.jsp">Contact us</a></li>
				<li><a href="ProfileServlet">Web Service</a></li>
				<li><a href="logoutServlet">Logout</a></li>
				
			</ul>
			<center>
				<div id="tagline">
					<div>
						<h2 style="height: 0px;">RTMNU</h2>
						<br>  42XQ+4RW, Amravati Rd, Gokulpeth, Nagpur, Maharashtra 440033<br>
						<br> Name: Mrunali Urade<br> ID: 1234<br> Email: <a
							href="mailto:urademrunali@gmail.com">urademrunali@gmail.com</a>
					</div>
				</div>
			</center>
		</div>

		
	</div>
</body>
</html>