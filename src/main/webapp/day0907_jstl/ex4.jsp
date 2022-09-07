<%@page import="java.util.ArrayList"%>
<%@page import="data.dto.StudentDto"%>
<%@page import="java.util.List"%>
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
</style>
</head>
<body>
<%
	List<StudentDto> list=new ArrayList<StudentDto>();
	list.add(new StudentDto("이영자","서울",100));
	list.add(new StudentDto("강호동","제주",80));
	list.add(new StudentDto("유재석","부산",98));
	list.add(new StudentDto("이미자","대구",77));
	request.setAttribute("list", list);
%>
<table class="table table-boredered" style="width:400px;">
	<tr valign="middle" align="center">
		<th>번호</th><th>인덱스</th><th>이름</th>주소<th></th><th>점수</th>
	</tr>
	<c:set var="sum" value="0"/>
	<c:forEach var="dto" items="${list}" varStatus="i">
		<tr valign="middle" align="center">
			<td>${i.count}</td>
			<td>${i.index}</td>
			<td>${dto.name}</td><!-- 바로 get으로 받아옴 var를 dto라고 두고 dto의 private 변수명을 쓴다 -->
			<td>${dto.address}</td>
			<td>${dto.score}</td>
			<!-- 점수 합계 구하기 -->
			<c:set var="sum" value="${sum+dto.score}"/>
		</tr>	
	</c:forEach>
	<tr valign="middle">
		<td colspan="5" align="center">
			<h3 style="color:red;">점수 총 합계는 ${sum}</h3>
		</td>
	</tr>
	
	
	
</table>
</body>

</html>