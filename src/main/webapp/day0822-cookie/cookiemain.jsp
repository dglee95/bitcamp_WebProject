<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
* {
	font-family: 'Jua';
}
</style>

</head>
<body>
<%
	boolean blogin = false;

	//브라우저에 저장된 모든 쿠키값들을 얻는다
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			//cookieok 가 있는지
			String cookieok = cookies[i].getName();
			if (cookieok.equals("cookieok"))//cookieok라는 이름을 가진 쿠키가 있을 경우
			{
				blogin = true;
			}
		}
	}
	
	if(blogin)
	{%>
		<jsp:include page="cookielogout.jsp"/>
	<%}else{%>
		<jsp:include page="cookielogin.jsp"/>
	<%}
%>
<hr align="left" size="10" width="500">
<h3>오늘의 주요 기사</h3>
<jsp:include page="paper.jsp"/>
	
</body>
</html>



























