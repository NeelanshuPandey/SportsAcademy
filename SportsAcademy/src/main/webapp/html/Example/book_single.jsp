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
<div style="justify-content:center;background-image:" >
<div style="margin-left:200px;width:50%;height:500px;border-radius:3%;center;color:black;border:solid;background-color:white;background-image: ">
<form method="post" action="/SportsAcademy/html/Example/book_info.jsp">
  <div class="mb-4">
    <label for="name" class="form-label">Enter Book Name</label>
    <input type="text" class="form-control" placeholder="Book Name" name="bookname" >
    <div  class="form-text"></div>
  </div>
  <div class="mb-4">
    <label for="author" class="form-label">Enter Author Name</label>
    <input type="text" class="form-control" placeholder="Author Name"  name="authorname">
  </div>
  <div class="mb-3 form-check">
   <label class="form-label" for="exampleCheck1">Price</label>
    <input type="text" class="form-control" placeholder="Enter price" name="bookprice">
   
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