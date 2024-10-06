<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="sportsacademy.dao.*" %>
     <%@page import="sportsacademy.beans.*" %>
    <%@page import="java.util.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Feedback</title>
<%@include file="/common/common_css.html" %>
<style type="text/css">

body{

 background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);

}


</style>


</head>
<body>

 <a href="/SportsAcademy/admin/admin_home.jsp">    <i class="fa fa-home" style="color:red;font-size: xx-large;">   </i></a> 
<h1 style="text-align:center">All Feedback List</h1>
<%
AdminDao dao=new AdminDao();
ArrayList<Feedbackbean> feedbackList=dao.allFeedback();

int length=feedbackList.size();//it will total elements
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

<form method="post"action="/SportsAcademy/DeleteContact">





<table class="table table-bordered border-dark">
<thead>
<tr>
<th>Select</th>

                         <!--  id, name, email, rating, remark, date -->
<!-- <th>Serial Number</th> -->

<th>ID</th>
<th>Name</th>
<th>email</th>
<th>Rating</th>
<th>Remarks</th>
<th>Date</th>
</tr>
<tbody>
<%
for(Feedbackbean c:feedbackList)
{ 

%>
<tr>
<td><input type="checkbox" class ="form-check-input"name="chk" vlaue="<%=c.getId() %>"></td>
 


<td><%=c.getId() %></td>
<td><%=c.getName()%></td>
<td><%=c.getEmail() %></td>
<td><%=c.getRating() %></td>
<td><%=c.getRemark() %></td>
<td><%=c.getDate() %></td></tr>
<%} %>
</tbody>




</table>
<div class="text-center">

<button class="btn btn-danger" > Delete</button>
</div>

</form>

<%} %> 
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>