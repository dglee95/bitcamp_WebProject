<%@page import="data.dto.StudentDto"%>
<%@page import="java.util.Vector"%>
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
<h3 class="alert alert-info">여기는 ex2_forward.jsp 입니다</h3>
<%
	//request에 저장된 list를 얻어보자
	//Object는 모든 클래스의 최상위라서 형변환 시켜야함
	Vector<StudentDto> list=(Vector<StudentDto>)request.getAttribute("list");
	//반복문을 이용해서 출력해보자
	for(StudentDto dto:list)
	{%>
	<h3>
		이름 : <%=dto.getName()%> <br>
		주소 : <%=dto.getAddress()%> <br>
		점수 : <%=dto.getScore()%>
	</h3>
	<%}
%>


</body>
</html>