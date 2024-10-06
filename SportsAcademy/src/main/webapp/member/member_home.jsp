<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/common_css.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member home Page</title>
<style type="text/css">

h1{
color:green;
text-align: center;
text-shadow: 3px 3px 2px red,-3px 3px 3px yellow;

}
body{
  background-image:linear-gradient(red,yellow);
}

.task-container
{
width:10%;
height:200px;

}
img{

width:100%;
height:100%;

}

function show(){
	
	/* alert("in show") */
	
	/* window .location.href="/SportsAcademy/admin/all_contacts.jsp" */
		/* location.href= */
		
		window.location.href="/SportsAcademy/MemberLogout"
		
		
}
/* "/SportsAcademy/MemberLogout"
 */

</style>



</head>
<body>


<%String msg=(String)request.getAttribute("message") ;%>

<%@include file="/html/header.html" %>



<%
String adminId=(String)session.getAttribute("sessionKey");

String userRole=(String) session.getAttribute("role");

if(adminId==null||session.isNew()){

request.setAttribute("message","Unauthorised Access")	;
	
RequestDispatcher rd=request.getRequestDispatcher("/member/member_login.jsp");

 rd.forward(request,response);
}
else{


%>

<div class="container-fluid">
<h1 style="text-align: center;display:inline margin-left:40%">Member DashBoard</h1>

<button type="button" class="btn btn-danger"style="margin-left:80%" onclick="show()">Logout</button>
</div>
<div class="d-flex bg-info gap-4 justify-content-center align-item-center">
<div class="task-container">
<img alt=" contact us"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ17731Oe1m3DCDqKaqrTA_v0w8SIMVof8ziw&s">

</div>
</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


<%} %>

</body>
</html>