<%@page import="data.dto.SimpleBoardDto"%>
<%@page import="data.dao.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	textarea{
		font-family: 'Hahmlet';
	}
	th{
		text-align:center;
		vertical-align:middle;
	}
</style>
<%
	request.setCharacterEncoding("utf-8");
	String num=request.getParameter("num");
	SimpleBoardDao dao=new SimpleBoardDao();
	SimpleBoardDto dto=dao.getContent(num);
%>
</head>
<body>
<div class="container" style="margin:30px 30px;width:800px;">
	<form action="updateaction.jsp" method="post">
	<input type="hidden" name="num" value="<%=num%>">
	<input type="hidden" name="pass" value="<%=dto.getPass()%>">
		<table class="table table-bordered">
		<caption align="top"><h5><b><i class="bi bi-plus-slash-minus" style="font-size:38px;color:red;"></i>&nbsp;글 수정하기</b></h5></caption>
			<tr>
				<th width="100" class="table-light">제 목</th>
				<td><input type="text" class="form-control" value="<%=dto.getSubject()%>"
				name="subject" required="required"></td>
			</tr>
			<tr>
				<th class="table-light">작성자</th>
				<td>
				<input type="text" class="form-control form-control-sm" name="writer" required="required"
				value="<%=dto.getWriter()%>">
				</td>
			</tr>
			<tr>
				<th height="200" class="table-light">내 용</th>
				<td>
				<textarea style="height:200px;" class="form-control" required="required" 
				name="content"><%=dto.getContent()%></textarea>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<button type="submit" class="btn btn-info"><i class="bi bi-pencil-square"></i>&nbsp;수정하기</button>
				<button type="button" class="btn btn-secondary"
				onclick="history.go(-2)"><i class="bi bi-card-text"></i>&nbsp;글내용</button>
				</td>
			</tr>	
		</table>
		</form>
</div>
</body>
</html>