<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/common/common_css.html"%>

</head>
<body>
	<%
	String[] name = { "scott", "smith", "scrum" };
	String[] course = { "core java", "Advance Java", "Spring Boot" };
	%>
	<table class="table">
		<thead>
			<tr>
				<th>StudentName</th>
				<th>courseName</th>

			</tr>

		</thead>
		<tbody>
		
		
		
		
		
			<%
			for (int i = 0; i < name.length; i++) {
			%>
			<tr>
				<td><%=name[i]%></td>
				<td><%=course[i]%> <%}%>
				
				
				
				
				
		
		
		</tbody>

	</table>

	<select>

<option>select course</option>
<% 	for (int j = 0; j < course.length; j++){ %>
		
		<option> <%=course[j] %></option>
		<%}%>
		
	
		
		</select>
</body>
</html>