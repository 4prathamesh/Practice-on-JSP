<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
	%>
	<%
		int eid=Integer.parseInt(request.getParameter("eid"));
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","12345");
			pstmt=conn.prepareStatement("delete from jspemployee where eid=?");
			pstmt.setInt(1, eid);
			int value=pstmt.executeUpdate();
			if(value>0)
			{
				response.sendRedirect("view.jsp"); 
			}
			
		}
		catch(Exception ex)
		{
			%>
			<h1>Error is <%=ex%></h1>
			<%	
		}
	%>
</body>
</html>