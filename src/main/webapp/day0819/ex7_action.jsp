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
	.div1{
	width:300px;
	height:450px;
	border: 2px solid gray;
	padding: 10px;
	font-size: 20px;
	}
</style>

</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");//읽어오는 값이 한글일 경우 무조건 선언
	String fcolor=request.getParameter("fcolor");
	String doll=request.getParameter("doll");
	String food=request.getParameter("food");
	String []itlang=request.getParameterValues("itlang");
	%>
	<div class="div1" style="color:<%=fcolor%>;">
	글자색 : <%=fcolor%><br>
	선택한 인형 : <img src="<%=doll%>" width="100"><br>
	오늘 점심 : <img src="<%=food%>" width="100"><br>
	가능한 IT 언어는? : 
	<%if(itlang==null){%>
			구현 가능한 언어가 없어요 ㅠㅠㅠㅠ
			<%}else{
				for(String it:itlang){%>
					<b><%=it%></b>&nbsp;<br>
				<%}%>
				이 정도 언어는 가능하죠!!!
		<%}%>
	</div>
</body>
</html>