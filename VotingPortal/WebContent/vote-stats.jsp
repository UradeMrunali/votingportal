
<%@page import="model.Vote"%>
<%@page import="model.VotingBin"%>
<%@page import="java.util.List"%>
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
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhbsEM-lFAXGiyg-ObCeznTpRECz_-Gwfwoeb2uOJUdGeorp3VwasbBCC32RhlRExnh-U&usqp=CAU');
    background-size: cover;
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
					style="text-align: center; color: black; margin: 0px 0 0px 324px;">
					<h1>Voting Portal</h1>
				
				</div>
			</div>
			<ul>
				<li><a class="welcome"><b>Welcome! <%=userName %></b></a></li>
				<li><a href="index.jsp">Project Description</a></li>
				<li><a href="vote.jsp">Vote Here</a></li>
				<li class="current"><a href="vote-stats.jsp">Voting
						Statistics</a></li>
				<li><a href="contact.jsp">Contact us</a></li>
				<li><a href="ProfileServlet">Web Service</a></li>
				<li><a href="logoutServlet">Logout</a></li>
			
			</ul>
			<%
				VotingBin vb = new VotingBin();
				int javaCount=0, dotnetCount=0, pythonCount=0;
				List<Vote> list = vb.displayVotingStatistics();
				for(Vote v:list) {
					javaCount = v.getJavaCount();
					dotnetCount = v.getDotnetCount();
					pythonCount = v.getPythonCount();
				}
			%>
			<div id="tagline">
				<div>
					<h2 style="margin: 0px 0px 0px 300px;">Total number of Votes
						registered!</h2>
					<div style="padding: 0px 0px 21px 0;">
						<center>
							<table cellspacing=0 cellpadding="10">
								<tr>
									<td align=left style="color: #295071">Java:</td>
									<td><input type="text" id="java" value="<%=javaCount%>" name="java" size="10"
										disabled="disabled"></td>
								</tr>
								<tr>
									<td align=left style="color: #295071">Dot Net:</td>
									<td><input type="text" id="dotnet" value="<%=dotnetCount%>" name="dotnet" size="10"
										disabled="disabled"></td>
								</tr>
								<tr>
									<td align=left style="color: #295071">Python:</td>
									<td><input type="text" id="python" value="<%=pythonCount%>" name="python" size="10"
										disabled="disabled"></td>
								</tr>
							</table>
						</center>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>