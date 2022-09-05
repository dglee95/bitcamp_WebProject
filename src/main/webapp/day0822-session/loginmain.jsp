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
<%
	//세션으로부터 loginok를 얻어서 널이 아닐 경우 로그아웃 폼을 나타낸다
	//null일 경우는 로그인 폼을 나타낸다
	
	String loginok=(String)session.getAttribute("loginok");

	if(loginok==null)
	{%>
		<jsp:include page="loginform.jsp"/>
	<%}else{%>
		<jsp:include page="logoutform.jsp"/>
	<%}
%>
</body>
</html>