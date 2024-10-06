<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us</title>
<%@include file="/common/common_css.html" %>
<style>

.contact-flex-div{
width:80%;
height:600px;
/* background-color: aqua; */
gap:20px;
justify-content: center;

display: flex;
margin: 100px;
}
.img{
width:20%;
height:100px;
}
.img-div img{
width:100%;
height:100%;

}
/* .contact-div{

height:500px;
width:40%;
background-color: grey;
}
 */

</style>




</head>
<body>
<%@include file="/html/header.html" %>

<%String msg=(String)request.getAttribute("message") ;%>

<%if (msg!=null) 
{%>
<div  class="alert alert-warning w-25  alert-dismissible fade show" role="alert">
  <strong><%=msg %></strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>

<div class="container-fluid bg-info d-flex gap-5 justify-content-center">
<h2 style="text-align:center"> 

<i class="far fa-comments"></i> feel fee to contact us

</h2>
<h2>
<i class="fas fa-phone"></i><h2> 70776575465 </h2>
 
</h2>

</div>
<!-- contact form code -->
<div class="contact-flex-div">
<div class="img-div">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcQRWcp6vwqvlOksYcJczaHA9mAR1KkREAZw&s">
</div>
<div class="contact-div">
<form action="/SportsAcademy/ContactUs" method="post">
<div class="mb-4">

<label for="name" class="form-label">Name</label>
<input type="text" placeholder=" ENTER YOUR NAME" name="username" required="required" class="form-control">
</div>

<div class="mb-4">

<label for="email" class="form-label">Your Email</label>
<input type="email" placeholder=" ENTER YOUR Email" name="userEmail" required="required"class="form-control">
</div>

<div class="mb-4">

<label for="phone" class="form-label">Your Phone</label>
<input type="phone" placeholder=" ENTER YOUR Phone Number" name="userPhone" required="required"class="form-control">
</div>

<div class="mb-4">

<label for="question" class="form-label">Ask Question</label>
<input type="question" placeholder=" ENTER YOUR Phone Number" name="userQuestion" required="required"class="form-control">
</div>

<div class="text-center">
<button class="btn btn-danger"> Submit</button>
</div>

</form>
</div>
</div>

<!-- contact form code off -->
</body>
</html>