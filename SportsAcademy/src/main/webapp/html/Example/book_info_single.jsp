<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetching data from Book Form</title>
</head>
<body>
<h1>fetching data</h1>

<% String nm=request.getParameter("name") ;//to get the value from html control

String au=request.getParameter("author");

String pr=request.getParameter("price");

System.out.println("Name is:"+nm+"Author is:"+au+"and price is"+pr);


%>
<jsp:useBean id="bk" class="sportsacademy.beans.Book"></jsp:useBean>


<jsp:setProperty property="*" name="bk"/>

<h2>

Book Price:<jsp:getProperty property="bookprice" name="bk"/>


</h2>

<h2>

Book Name:<jsp:getProperty property="bookname" name="bk"/>


</h2>
<h2>

Book Author:<jsp:getProperty property="authorname" name="bk"/>


</h2>

</body>
</html>