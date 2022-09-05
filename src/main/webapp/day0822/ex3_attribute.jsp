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
<h3>request 에 Vector 저장 후 불러오기 연습</h3>
<%
	Vector<StudentDto> list=new Vector<>();
	list.add(new StudentDto("이영자","강남구",89));
	list.add(new StudentDto("홍길동","영등포구",67));
	list.add(new StudentDto("김진","제주도",100));
	list.add(new StudentDto("이효리","부산시",70));
	
	//데이터 Vector를 request에 저장
	//데이터를 저장하는 이름(마음대로) / Object는 클래스
	request.setAttribute("list", list);
	//list라는 변수를 가진 데이터들을 list라는 이름으로 저장한다는 뜻
	//setAttr은 다른 페이지에 있는 것들을 가져 올때 씀
	
	//페이지 이동은 2가지 방법 (의미)
	//1. forward : url주소 안바뀜, request,response 등이 그대로 전달됨
	//2. redirect : url주소 바뀜, request,response가 새로 생성 됨
	
	//jsp에서 redirect 하는 방법
	response.sendRedirect("ex4_redirect.jsp");//url 주소 바뀜
%>
</body>
</html>