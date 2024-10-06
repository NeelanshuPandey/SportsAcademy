<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/common/common_css.html" %>
</head>
<body>
<div style="justify-content:center;background-color:blue" >
<div style="margin-left:200px;width:50%;height:500px;border-radius:3%;center;color:black;border:solid;background-color:white;background-image: ">
<form method="post" action="/SportsAcademy/jsp/sports_plan_details.jsp">
  <div class="mb-4">
    <label for="planid" class="form-label">Planid</label>
    <input type="number" class="form-control" placeholder=" enter Plan Id" name="planid">
    <div  class="form-text"></div>
  </div>
  <div class="mb-4">
    <label for="Plan Name" class="form-label">Plan Name</label>
    <input type="text" class="form-control" placeholder="Author Name"  name="planname">
  </div>
  <div class="mb-4 ">
   <label class="form-label" >Duration</label>
    <input type="text" class="form-control" placeholder="Enter Duration" name="duration">
   
  </div>
  <div class="mb-4 ">
   <label class="form-label" >Charge</label>
    <input type="text" class="form-control" placeholder="Enter Charge" name="charge">
   
  </div>
  <div class="mb-4 ">
   <label class="form-label" >Facility</label>
    <input type="textarea" class="form-control" placeholder="Enter Facility" name="facility">
   
  </div>
  
  
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  
  <button type="reset"class="btn btn-danger">Reset </button>
  </div>
</form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</div>







</body>
</html>