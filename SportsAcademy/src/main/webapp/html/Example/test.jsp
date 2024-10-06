<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*,java.awt.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>





</head>
<body>
<h1 style="text-align: center"> Jsp Syntax</h1>
<%
String name="scott";
int age=3;
String course="advance java";

%>




<h2> Hello <%=name%></h2>
<p style="color:red;">your age is <%=age %> and your course name is <%=course %></p>
<h2> DAte and time is<%Date d=new Date(); %>  
<%=d %>

</h2>


</body>
</html>