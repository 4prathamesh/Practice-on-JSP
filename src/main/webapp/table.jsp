<%!//Enter //the input ang get Table  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='CSS/from.css'>
</head>
<body>
	<form action="" method="get">
	<input type="text" placeholder="Enter the Number" name='no'><br><br>
	<input type="submit" value="Calculate Table" name='s'><br><br>
	</form>
	<%!
		int i=0;
		int no;
	%>
	<br/><br/>
	<%
		if((request.getParameter("s"))!=null)
		{
			int no=Integer.parseInt(request.getParameter("no"));
			%>
				<table width="70%" aline="center" border="5">
				<tr>
				<th>Iterator</th><th>X</th><th>NUMBER</th><th>=</th><th>Table</th>
			<%
			for(i=1;i<=10;i++)
			{
				 %>
				 <tr>
				 <td><%=i %></td>
				 <td>X</td>
				 <td><%=no %></td>
				 <td>=</td>
				 <td><%=no*i %></td>
				 </tr>
				 <%
			}
			%>
			</table>
			<%
		}
	%>
</body>
</html>