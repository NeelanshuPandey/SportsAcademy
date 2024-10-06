<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Member Feedback</title>
<%@include file="/common/common_css.html" %>
<style type="text/css">

h1{
color:blue;
text-align: center;
text-shadow: 3px 3px 2px red,-3px 3px 3px green;

}
.div{
color:white;
width:80%;
height:300px;

}
.contact-flex-div{
width:80%;
height:600px;
/* background-color: aqua; */
gap:100px;
justify-content: center;

display: flex;
margin: 100px;
}

</style>

</head>


<body style="background:green">
<% 
String msg= (String)request.getAttribute("message");
%>
<%if(msg!=null) {
%>

<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong> <%=msg %>></strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>

<a href="/SportsAcademy/jsp/index.jsp">Back</a>
<h1>  Member Feedback </h1>
<div style="background-color: yellow;width:100%">
<P> <i>Provide Your Feedback,It is valuable for us!!</i> </P>
<!-- <div class="container:fluid justify-content-center gap-5">
</div> -->
</div>
<div class="contact-flex-div">
<form action="/SportsAcademy/Feedback" method="post">>
<div class="mb-5 input-group" style="background-color: cyan">


<span class="input-group-text"><i class="bi bi-person-lines-fill"></i></span>
<input type="text" placeholder="Enter Name" name="name"required="required"class="form-control">
<label for="name"class="form-label"></label>

</div>

<div class="mb-5 input-group">


<span class="input-group-text">@</span>
<input type="email" placeholder="Enter Email" name="email"required="required"class="form-control">
<label for="email"class="form-label"></label>

</div>

<div class="mb-5 input-group">

<select class="form-select" aria-label="Default select example"required="required" name="rating" >
  <option selected>Rate us</option>
  <option value="1">&#11088</option>
  <option value="2">&#11088 &#11088</option>
  <option value="3">&#11088 &#11088 &#11088</option>
</select>
</div>



<div class="form-floating mb-5">
  <textarea class="form-control" placeholder="Leave a remark here" id="floatingTextarea" name="remark"required="required"></textarea>
  <label for="floatingTextarea">Remarks</label>
</div>

<div>
<button type="submit" class="btn btn-primary">Submit</button>

<button type="reset" class="btn btn-danger">Reset</button>

</div>
</form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>