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
	<tr><th>ID</th><th>Name</th><th>Salary</th><th>Delete</th><th>Update</th>
	</tr>
	
	<%
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","12345");
		if(conn!=null)
		{
			pstmt=conn.prepareStatement("select *from jspemployee");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				int eid=rs.getInt(1);
				String name=rs.getString(2);
				long sal=rs.getLong(3);
				%>
					<tr>
					<td><%=eid %></td>
					<td><%=name %></td>
					<td><%=sal %></td>
					<td><a href='delete.jsp?eid=<%=eid%>'>Click</a></td>
					<td><a href="update.jsp?eid=<%=eid%>&name=<%=name%>&salary=<%=sal%>">Click</a></td>
					</tr>
				<%
			}
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