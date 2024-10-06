<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%@include file="/common/common_css.html" %>
<style type="text/css">


.task-container
{
width:10%;
height:200px;

}
img{

width:100%;
height:100%;

}
body{

 background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);

}

</style>
<script type="text/javascript">

function show(){
	
	/* alert("in show") */
	
	/* window .location.href="/SportsAcademy/admin/all_contacts.jsp" */
		/* location.href= */
		
		window.location.href="/SportsAcademy/AdminLogout"
		
}

</script>



</head>
<body>

<%
String adminId=(String)session.getAttribute("sessionKey");

String userRole=(String) session.getAttribute("role");

if(adminId==null||session.isNew()){

request.setAttribute("message","Unauthorised Access")	;
	
RequestDispatcher rd=request.getRequestDispatcher("/admin/admin_login.jsp");

 rd.forward(request,response);
}
else{


%>



<div class="container-fluid">
<h1 style="text-align: center;display:inline margin-left:40%">Admin DashBoard</h1>

<button type="button" class="btn btn-danger"style="margin-left:80%" onclick="show()">Logout</button>
</div>
<div class="d-flex bg-info gap-4 justify-content-center align-item-center">
<div class="task-container">

<a href="/SportsAcademy/admin/all_contacts.jsp">
<img alt=" contact us"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJtORH5hPlkWvRj_Q7pinaNM8mvsU6XD_b9g&s">
</a>
</div>




<div class="task-container">
<a href="/SportsAcademy/admin/all_feedback.jsp">
<img alt=" feedback"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6PphjDdJEonLHioymzJvcTLDCCcJlQBGtA&s">
</a>



</div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<%} %>
</body>
</html>