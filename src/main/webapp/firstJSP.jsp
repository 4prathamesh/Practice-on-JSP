<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.util.*"%>
<%@ page isErrorPage="true" errorPage="ErrorPage.jsp" %>
</head>
<body>
<%@ include file="navPage.jsp" %>
<h1>Welcome to Java server Pages</h1>
<%! 
int a=2,b=2;
Date d; %>
<%
	b=a/b;
	 d= new Date(); 
%>
<h1>Addition is <%= d %></h1>
<h2>**** is <%= b %></h2>
</body>
</html>