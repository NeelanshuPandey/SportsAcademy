<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!int show() 
{
	System.out.println("hello");//print on server console
	//out.println("hello jp");
	int sum=2+3;
	return sum;
}


%>

<%int add=show();

out.println("<h1>addition number is :"+add+"</h1>");
%>
<h2>expression is <%=add %></h2>
</body>
</html>