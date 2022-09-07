<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	.btn-neon-blue{color:#387df2;outline:2px solid #387df2;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-blue:hover{background:#387df2;color:#fff;box-shadow: 0 0 5px #387df2, 0 0 25px #387df2, 0 0 50px #387df2, 0 0 100px #387df2;transform:scale(1.1);}
	.btn-neon-blue.focus,.btn-neon-blue:focus{color:#387df2;background-color:#fff;border-color:#387df2;box-shadow:0 0 0 .2rem #387df2}
	.btn-neon-blue.disabled,.btn-neon-blue:disabled{color:#fff;background-color:#387df2;border-color:#387df2}
	.btn-neon-blue:not(:disabled):not(.disabled).active,.btn-neon-blue:not(:disabled):not(.disabled):active,.show>.btn-neon-blue.dropdown-toggle{color:#fff;background-color:#387df2;border-color:#387df2}
	.btn-neon-blue:not(:disabled):not(.disabled).active:focus,.btn-neon-blue:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-blue.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #387df2}
</style>
</head>
<body>
<!-- 한글 엔코딩 -->
<fmt:requestEncoding value="UTF-8"/>
	<form action="ex2.jsp" method="post" style="width:200px;">
		<h3>이름을 입력하세요</h3>
		<input type="text" name="irum" class="form-control" value="${param.irum }">
		<h3>가고 싶은 나라를 입력해주세요</h3>
		<input type="text" name="nara" class="form-control" value="${param.nara }">
		<button type="submit" class="btn btn-neon-blue">결과확인</button>
	</form>
	<!-- 이름을 입력시에만 결과가 나오도록 해보자 empty -->
	<c:if test="${!empty param.irum}">
	<h3>이름 : ${param.irum }</h3>
	<h3>가고 싶은 나라 : ${param.nara }</h3>
	
		<c:choose>
			<c:when test="${param.nara=='캐나다' }">
				<h3 style="color:green;">캐나다 항공비는 200만원입니다</h3>
			</c:when>
			<c:when test="${param.nara=='하와이' }">
				<h3 style="color:orange;">하와이 항공비는 190만원입니다</h3>
			</c:when>
			<c:when test="${param.nara=='괌' }">
				<h3 style="color:magenta;">괌 항공비는 100만원입니다</h3>
			</c:when>
			<c:when test="${param.nara=='뉴욕' }">
				<h3 style="color:gray;">뉴욕 항공비는 250만원입니다</h3>
			</c:when>
			<c:otherwise>
				<h3 style="color:red;">${param.nara }로 가는 뱅기는 없습니다</h3>
			</c:otherwise>
		</c:choose>
	</c:if>
</body>
</html>