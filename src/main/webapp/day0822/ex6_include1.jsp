<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
</style>

</head>
<body>
	<h3 class="alert alert-info">include1.jsp 에 include2.jsp 결과를 포함시켜보자</h3>
	<h4>안녕하세요. 여기는 include 1입니다</h4>
	<img src="../image/01.png">
	<hr>
	<h3>아래 결과는 include2입니다</h3>
	<jsp:include page="ex6_include2.jsp">
		<jsp:param value="../image/02.png" name="imgname"/>
		<jsp:param value="Happy Day!!!" name="message"/>
	</jsp:include>
</body>
</html>