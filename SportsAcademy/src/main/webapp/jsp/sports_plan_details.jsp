<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>fetching data</h1>


<jsp:useBean id="bk" class="sportsacademy.beans.SportsPlan"></jsp:useBean>


<jsp:setProperty property="*" name="bk"/>

<h2>

Plan ID:<jsp:getProperty property="planid" name="bk"/>


</h2>

<h2>

Book Name:<jsp:getProperty property="planname" name="bk"/>


</h2>
<h2>

duration:<jsp:getProperty property="duration" name="bk"/>

</h2>
<h2>

charge:<jsp:getProperty property="charge" name="bk"/>

</h2>
<h2>

facility:<jsp:getProperty property="facility" name="bk"/>

</h2>
</body>
</html>