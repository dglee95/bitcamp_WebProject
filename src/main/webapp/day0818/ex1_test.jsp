<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<style>
* {
	font-family: 'Dongle';
	
}
</style>
</head>
<body>
	<!-- HTML 주석 실행은 되는데 결과만 안나옴 소스보기하면 나옴 자바코드 넣으면 에러가 있으면 나옴 -->
	<%-- JSP 주석-비실행 소스보기해도 안보임 자바코드를 넣고싶을때 <%엔터%> --%>
	<h3>JSP 는 Java Server Page의 약자입니다</h3>
	<img src="../image/01.png">
	<%
	//자바영역,scriptlet이라고 부른다 여기서 선언하는 변수는 다 지역변수가 됨
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	String day = sdf.format(date);
	out.print(day);//out:내장객체:JspWriter,브라우저로 출력
	//여기서 오류 나오면 eclipse 콘솔창에서 검사해야함
	%>
<script type="text/javascript">
	
</script>
</body>
</html>









