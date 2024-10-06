<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="sportsacademy.dao.*" %>
     <%@page import="sportsacademy.beans.*" %>
    <%@page import="java.util.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All contacts</title>
<%@include file="/common/common_css.html" %>
<style type="text/css">

body{

 background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);

}


</style>


</head>
<body>

 <a href="/SportsAcademy/admin/admin_home.jsp">    <i class="fa fa-home" style="color:red;font-size: xx-large;">   </i></a> 
<h1 style="text-align:center">All Contact List</h1>
<%
AdminDao dao=new AdminDao();
ArrayList<Contact> contactList=dao.allContacts();

int length=contactList.size();//it will total elements
System.out.println(length);
%>
<div class="container bg-success" style="overflow:scroll">
<% 
if(length==0)

{
	%>

<h2>No contacts Available at present!!!</h2>
<%}
else{

%>

<form method="post" action="/SportsAcademy/DeleteContact">





<table class="table table-bordered border-dark">
<thead>
<tr>
<th>Select</th>


<th>Serial Number</th>

<th>Name</th>
<th>email</th>
<th>phone</th>
<th>question</th>
</tr>
<tbody>
<%
for(Contact c:contactList)
{ 

%>
<tr>
<td><input type="checkbox" class ="form-check-input" name="chk" value="<%=c.getId()%>"></td>



<td><%=c.getId() %></td>
<td><%=c.getName()%></td>
<td><%=c.getEmail() %></td>
<td><%=c.getPhone() %></td>
<td><%=c.getQuestion() %></td></tr>
<%} %>
</tbody>

</table>
<div class="text-center">

<button class="btn btn-danger" > Delete</button>
</div>

</form>


</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<%} %> 
</body>
