<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="master.jsp" %>
<%! 
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
%>
	<table border="5" width="50%" align="center">
	<tr><th>ID</th><th>Name</th><th>Salary</th>
	</tr>
	
	<%
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","12345");
		if(conn!=null)
		{
			conn.prepareStatement("");
		}
		else{
			out.println("<h1>Error in Data Store</h1>");
		}
	}
	catch(Exception ex)
	{
		out.println("<h1>Error is </h1>"+ex);
	}
	%>
	
	</table>
</body>
</html>