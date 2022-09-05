<%@page import="data.dto.SimpleBoardDto"%>
<%@page import="data.dao.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	div{
		display:flex;
	}
	#wrap{
		position: absolute;
		left:50%;
		top:50%;
		transform:translate(-50%,-50%);
		
	}
</style>

</head>
<%
	request.setCharacterEncoding("utf-8");
	String num=request.getParameter("num");
%>

<body>

	<div id="wrap">
		<form action="deletepassaction.jsp" method="post">
			<input type="hidden" name="num" value="<%=num%>">
			<div class="input-control">
			<h4 style="width:100px">비밀번호</h4>
			<input type="password" name="pass" placeholder="비밀번호 입력" autofocus required="required"
			class="form-control form-control-sm" style="width:140px;">
			<button type="submit" class="btn btn-outline-danger" style="margin-left:20px;"><i class="bi bi-pencil-square"></i>삭제하기</button>
			</div>
		</form>
	</div>

</body>
</html>