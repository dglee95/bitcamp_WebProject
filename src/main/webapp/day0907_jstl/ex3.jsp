<%@page import="java.util.ArrayList"%>
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
		font-size:20px;
		font-weight:bold;
	}
</style>
</head>
<body>
<%
	List<String> list=new ArrayList<String>();
	list.add("red");
	list.add("green");
	list.add("orange");
	list.add("magenta");
	list.add("gray");
	list.add("pink");
	list.add("cyan");
	
	request.setAttribute("list", list);
	request.setAttribute("total", list.size());
	
	//세션에 아이디를 저장해보자
	session.setAttribute("id", "angel");
%>
<h3>1~10까지 출력하기</h3>
<c:forEach var="a" begin="1" end="10">
	${a}&nbsp;
</c:forEach>
<h3>0부터 3의 배수 출력</h3>
<c:forEach var="a" begin="0" end="30" step="3">
	${a}&nbsp;
</c:forEach>
<h3>list에는 총 ${total }개의 색상이 들어있습니다</h3>
<%-- ${변수명}일 경우 앞에 requestScope가 생략되어있음, 
request에 저장된 데이터는 Java처럼 getAttribute로 얻지 않아도 바로 출력이 가능하다
하지만 세션에 저장된 데이터 출력시 sessionScope.변수명 으로 출력해야한다
변수명=key값 sessionScope.변수명=value값 --%>

<h3>list에는 총 ${requestScope.total}개의 색상이 들어있습니다</h3><!-- requestScope.이 그냥 생략되어있는것 -->

<h3>세션 아이디 출력</h3>
<h3>현재 로그인한 아이디는 ${sessionScope.id}입니다</h3>
<hr>
<h3>list 전체를 테이블로 출력하기</h3>
<table class="table table-bordered" style="width:300px;">
	<tr>
		<th>번호</th><th>인덱스</th><th>색상</th>
	</tr>
<c:forEach var="s" items="${list}" varStatus="i">
	<tr>
		<td style="background-color:${s}">${i.count}</td><!-- 무조건 1번부터 출력 -->
		<td>${i.index}</td><!-- 실제 list의 index값이 출력 중간부터 출력하면 3부터 나올수도 있고 그럼 -->
		<td>
			<b style="color:${s}" >${s}</b>
		</td>
	</tr>
</c:forEach>
</table>
<h3>list 인덱스 2~4를 테이블로 출력하기</h3>
<table class="table table-bordered" style="width:300px;">
	<tr>
		<th>번호</th><th>인덱스</th><th>색상</th>
	</tr>
<c:forEach var="s" begin="2" end="4" items="${list}" varStatus="i">
	<tr>
		<td style="background-color:${s}">${i.count}</td><!-- 무조건 1번부터 출력 -->
		<td>${i.index}</td><!-- 실제 list의 index값이 출력 중간부터 출력하면 3부터 나올수도 있고 그럼 -->
		<td>
			<b style="color:${s}" >${s}</b>
		</td>
	</tr>
</c:forEach>
</table>
</body>
</html>










