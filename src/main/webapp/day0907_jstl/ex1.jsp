<%@page import="java.util.Date"%>
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
	<!-- jstl에서 변수 선언은 c:set -->
	<c:set var="su1" value="7"/>
	<c:set var="su2" value="4"/>
	
	<%-- 변수 출력은 원래 <c:out/> 인데 생략 --%>
	숫자 1 : ${su1}<br>
	숫자 2 : ${su2}<br>
	숫자 1을 다른 방법으로 출력 : <c:out value="${su1}"/><br>
	
	<!-- if 사용법 -->
	<c:if test="${su1>su2}">
		<h2>숫자 1이 더 크네요!!</h2>
	</c:if>
	<c:if test="${su2>su1}">
		<h2>숫자 2가 더 크네요!!</h2>
	</c:if>
	
	<c:set var="nara" value="하와이"/>
	<c:if test="${nara=='하와이'}">
		<h2 style="color:red;">하와이는 해변이 아름다워요!!</h2>
	</c:if>
	<c:if test="${nara!='프랑스'}">
		<h2 style="color:green;">프랑스는 에펠탑이 아름다워요!!</h2>
	</c:if>
	
	<h2>JSTL 에서의 산술 연산</h2>
	더하기 "\${su1+su2}": ${su1+su2}<br>
	빼기 "\${su1-su2}": ${su1-su2}<br>
	곱하기 "\${su1*su2}": ${su1*su2}<br>
	나누기#1 "\${su1/su2}": ${su1/su2}<br>
	나머지#1 "\${su1%su2}": ${su1%su2}<br>
	나누기#2 "\${su1 div su2}": ${su1 div su2}<br>
	나머지#2 "\${su1 mod su2}": ${su1 mod su2}<br>
	
	<hr>
	<h2>각종 fmt 태그들</h2>
	<c:set var="money" value="5678900"/>
	<c:set var="today" value="<%=new Date()%>"/><!-- 자바변수를 jstl 변수로 변환시 -->
	<c:set var="num" value="0.012345678"></c:set>
	
	<h3>급여 : ${money }</h3>
	<h4>오늘날짜 : ${today }</h4>	
	
	<fmt:formatNumber value="${money }" type="number"/> : number<br>
	<fmt:formatNumber value="${money }" type="currency" currencySymbol="$"/> : currency<br><!-- 현지 화폐단위로 3자리마다 컴마 -->
	<fmt:formatNumber value="${money }" type="percent"/> : percent<br>
	<fmt:formatNumber value="${num }" type="percent" maxFractionDigits="2"/>*100 maxFractionDigits->소숫점 자릿수<br>
	<fmt:formatNumber value="${num }" type="number" maxFractionDigits="4"/><br>
	<fmt:formatNumber value="${num }" type="currency"/><br>
	
	<h3>날짜를 각종 양식으로 출력</h3>
	<fmt:formatDate value="${today }" type="time"/> : time<br>
	<fmt:formatDate value="${today }" type="date"/> : date<br>
	<fmt:formatDate value="${today }" type="both"/> : both<br>
	<fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm EEEE"/>  db에서 가져올때 datetime 인거만 됨 (String이면 안됨)<br>
	<fmt:formatDate value="${today }" pattern="yyyy-MM-dd a hh:mm EEE"/>  db에서 가져올때 datetime 인거만 됨 (String이면 안됨)<br>
	
	
	
</body>
</html>

























