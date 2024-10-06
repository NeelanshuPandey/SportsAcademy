<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="sportsacademy.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This Is a Cricket Page</title>
</head>
<body style="margin:0px">
<div style="width: 100%;height: 60px;background-color:Yellow">
<h2 style="text-align:center;color:black;margin:0px"><i>Sports Gallery</i> 

<jsp:useBean id="slogan" class="sportsacademy.beans.slogan" scope="application"></jsp:useBean>

<jsp:getProperty property="tagline" name="slogan"/>


</h2>

 </div>
 <div style="background-color:green">
 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdAPtL0Bl1hNp0lVCaAYc7fKHYH06Wq3TtIg&s"style="width:30%;height:25%;margin-top:6%;margin-left:1%;border-style:solid;border-radius:100%">
 
 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdSCqZa8qIsgtI-m0xjLTlwWufoIXIHkJd-g&s/"style="width:30%;height:25%;margin-top:6%;margin-left:1% ;border-style:solid;border-radius:80%">
 
 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdAPtL0Bl1hNp0lVCaAYc7fKHYH06Wq3TtIg&s"style="width:30%;height:25%;margin-top:6%;margin-left:1%;border-style:solid;border-radius:100%">
 </div>
 <div style="background-color:green">
 
 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYcYGNEQ1Gl2c96oaGNMJu7Lfqf3yUJM25OA&s" style="width:30%;height:25%;margin-top: 8%;margin-left:20%;border-style:white;border-radius:3%">
 
 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSce5L2gj--N_3rYg3ZygIeQLz32YpWVuUDgA&s" style="width:30%;height:100%;margin-left:10%;border-radius:3%">
 </div>
 
 <div style="width:100%;height:30px;background-color:white;clear:both "> 

<span style=" font-size:25px;font-family:cursive;margin-left:35%"> &copy;created by messi &hearts; </span>
  </div>
 
</body>
</html>