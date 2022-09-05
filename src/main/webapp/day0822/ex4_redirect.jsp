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
<h3 class="alert alert-success">여기는 ex_redirect.jsp 입니다</h3>
<%
	Vector<StudentDto> list=(Vector<StudentDto>)request.getAttribute("list");
	//redirect로 이동시 request는 새로 생성이 되므로 list는 당연히 없음
	if(list==null){
		out.print("list가 없어요");
	}else{
		out.print("list가 있어요");
	}
%>
</body>
</html>