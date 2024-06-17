<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navPage.jsp" %>
	<form action=" " method="get">
	<input type="text" placeholder="Enter the Number " name="first">
	<input type="text" placeholder="Enter the Second No" name="sec">
	<input type="submit" value="Add Value" name='s'>
	</form>
	<%
	
	if(request.getParameter("s")!=null)
	{
		int a=Integer.parseInt(request.getParameter("first"));
		int b=Integer.parseInt(request.getParameter("sec"));
		int c=a+b;
		%>
		<h1>Addition is <%=c %></h1>
		<% 
	}
	else
	{
		out.println("<h1>Error is </h1>");
	}
	
	%>
</body>
</html>