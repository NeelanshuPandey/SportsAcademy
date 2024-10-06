<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import=" sportsacademy.beans.*" %>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%Employee e=new Employee(); %> --%>
<jsp:useBean id="emp" class="sportsacademy.beans.Employee" scope="request"></jsp:useBean>
<jsp:setProperty property="name" name="emp" value="java prakash"/>
<jsp:setProperty property="phone" name="emp" value="9792990979"/>
<jsp:setProperty property="salary" name="emp" value="5000"/>

<jsp:forward page="/html/Example/employee_details.jsp"></jsp:forward>








</body>
</html>