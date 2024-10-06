<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Registration Form</title>
<%@include file="/common/common_css.html" %>
<style type="text/css">

h1{
color:green;
text-align:center;
text_shadow:3px 3px 2px red

}
/* .box{
text-align: center ;
 width:100%;
 display-flex:flex;
 border: 2px;
 border-color: red;
} */
/* .border{
margin-top: 30px;


} */

</style>
</head>
<body>
<div style="background-color:yellow">
<h1>Member Registration </h1>
</div>
<a href="/SportsAcademy/jsp/index.jsp">Back</a>
<div style="width:40%;margin-left: 250px;background-image: url('undefined - Imgur.jpg');" >


<form action="/SportsAcademy/MemberRegistration" method="post">
  <div class="mb-1 ">
    <label for="id" class="form-label">Id</label>
    <input type="text" class="form-control"  aria-describedby="id" name="id">
      </div>
  <div class="mb-1">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control"  name="pass">
  </div>
  <div class="mb-1">
    <label for="Name" class="form-label">Name</label>
    <input type="text" class="form-control"  name="name">
  </div>
  
  <div class="mb-1">
    <label for="Email" class="form-label">Email</label>
    <input type="email" class="form-control"  name="email">
  </div>
  <div class="mb-1">
    <label for="Phone" class="form-label">Phone</label>
    <input type="number" class="form-control"  name="phone">
  </div>
  <div class="mb-1">
    <label for="Address" class="form-label">Address</label>
    <input type="text" class="form-control"  name="address">
  </div>
  
   <div class="mb-1">
    <label for="plan" class="form-label">PlanName</label>
    <input type="text" class="form-control"  name="plan">
  </div>
  
  
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" name="sports" value="cricket">
    <label class="form-check-label" for="exampleCheck1">Cricket</label>
  </div>
  
   <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" name="sports" value="hockey">
    <label class="form-check-label" for="exampleCheck1">Hockey</label>
  </div>
  
   <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" name="sports" value="basketball">
    <label class="form-check-label" for="exampleCheck1">Basketball</label>
  </div>
  
  <button type="reset" class="btn btn-danger">Reset</button>
  
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>


</div>
</body>
</html>