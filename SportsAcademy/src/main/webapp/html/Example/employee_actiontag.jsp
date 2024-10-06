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
<jsp:useBean id="emp" class="sportsacademy.beans.Employee"></jsp:useBean>
<jsp:setProperty property="name" name="emp" value="java prakash"/>
<jsp:setProperty property="phone" name="emp" value="9792990979"/>
<jsp:setProperty property="salary" name="emp" value="5000"/>

<h1> fetching values of Employee</h1>


<h2>Employee Name:<jsp:getProperty property="name" name="emp" /></h2>
<h2>Employee Phone:<jsp:getProperty property="phone" name="emp" /></h2>
<h2>Employee Salary:<jsp:getProperty property="salary" name="emp" /></h2>







</body>
</html>