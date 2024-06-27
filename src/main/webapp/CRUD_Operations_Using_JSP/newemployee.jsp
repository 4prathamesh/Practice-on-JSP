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
	<div class="frombox">
	<form action="" method="POST">
	<br><br>
	<input type="text" name="username" placeholder="Enter the Employee User Name"><br><br>
	<input type="text" name="salary" placeholder="Enter the Employee Salary"><br><br>
	<input type="submit" name='s' value="Submit">
	</form>
	</div>
<%
	String btn=request.getParameter("s");
	if(btn!=null)
	{
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","12345");
			if(conn!=null)
			{
				String name=request.getParameter("username");
				long salary=Long.parseLong(request.getParameter("salary"));
				pstmt=conn.prepareStatement("insert into jspemployee values('0',?,?)");
				pstmt.setString(1, name);
				pstmt.setLong(2, salary);
				int value=pstmt.executeUpdate();
				if(value>0)
				{
					%>
					<h1>Data Store in Data Bases</h1>
					<% 
				}else
				{
					%>
					<h1>Data Store not in Data Bases</h1>
					<%
				}
			}
			else{
				%>
				<h1>Connection not Done</h1>
				<% 
			}
		}
		catch(Exception ex)
		{
			out.println("<h1>error is </h1>"+ex); 
		}
		
	}
%>
</body>
</html>