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
	//폼이 get방식일 경우 톰캣8이후 엔코딩을 안해도 된다
	//파라미터의값은 폼태그의 name="" 이 값을 넣어야함
	String irum=request.getParameter("irum");
	//checkbox는 체크하면 value가 없을때 on을, 체크안하면 무조건 null
	String driver=request.getParameter("driver");
	%>
	<h3>폼으로부터 읽은 값</h3>
	<h3>이 름 : <%=irum%></h3>
	<h3>운전면허 : <%=driver==null?"없음":"있음"%></h3><%--조건이 null이 올 수 있으면 무조건 null로 --%>
</body>
</html>









