<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 폼</title>
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
	<button type="button" class="btn btn-danger"
	style="margin-left: 500px;" 
	onclick="location.href='logoutaction.jsp'">로그아웃</button><%--js에서 페이지 이동할때 쓰던 것 --%>
	<%
		//세션에 저장된 myid를 얻어서 출력해보자
		String myid=(String)session.getAttribute("myid");
	%>
	<b style="margin-bottom: 20px;"><%=myid%>님이 로그인 중입니다</b>
	<hr>
	<img src="../image/mainpage.PNG" width="100%">
</body>
</html>