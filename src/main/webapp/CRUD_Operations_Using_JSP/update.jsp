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
	<%
		int id=Integer.parseInt(request.getParameter("eid"));
		String name=request.getParameter("name");
		long sal=Long.parseLong(request.getParameter("salary"));
	%>
	<div class="frombox">
	<form action="" method="POST">
	<br><br>
	<input type="hidden" name="id" value="<%=id%>">
	<br><br>
	<input type="text" name="name1" placeholder="Enter the Employee User Name" value="<%=name%>"><br><br>
	<input type="text" name="salary1" placeholder="Enter the Employee Salary" value="<%=sal %>"><br><br>
	<input type="submit" name='s' value="Update Employee Data">
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
				String uname=request.getParameter("name1");
				long usalary=Long.parseLong(request.getParameter("salary1"));
				pstmt=conn.prepareStatement("update jspemployee set name=? , salary=? where eid=?");
				pstmt.setString(1, uname);
				pstmt.setLong(2, usalary);
				pstmt.setInt(3,id);
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