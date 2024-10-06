<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<%@include file="/common/common_css.html" %>
<style type="text/css">

h1{
color:blue;
text-align: center;
text-shadow:3px 3px 2px red;

}
.box{
display:flex;
width:100%;
height:400px;
background-color: Aqua;
flex-wrap:wrap;
justify-content:center;
align-items:center;
gap:4px;
}
div.stadium{


width:100%;
height:400px;
background-color: red;
float:left;
justify-content:center;
align-items:center;

table.st{
 
width:200px;
height:300px;
margin:100px;
gap:10px;

}
.img{
width:50%;
height:50%;
margin: center;
}
table,th,td{
border-collapse:collapse;
border:3px solid black;

}

</style>


</head>
<body>
<a href="/SportsAcademy/jsp/index.jsp">back</a>
<h1><b>CAFETERIA</b></h1>

<%@include file="/html/header.html" %>

<div style=" background-color:yellow">
<h1 class="h1"> service provide</h1>
</div>

<div class="box stadium">


<table class="table table-bordered border-primary">

<tr>
<thead><tr>
<td>PRODUCT</td>
<td>PRICE</td>
<td>IMAGE</td>
</tr>
</thead>
<tr><td>coffee</td>
<td>30</td>
<td> <img src="data:image/jpeg;base64,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">  </td>
</tr>
<tr>
<thead>
</thead>
<tr><td>samosa</td>
<td>20</td>
<td> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSBHGI8UpNsGpnRMFINlw1uIXTvBj8EUZBGA&s">  </td>
</tr>

</table>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</div>



</body>
</html>