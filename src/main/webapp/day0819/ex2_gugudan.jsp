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
<table class="table table-bordered" style="width:800px;">
	<tr class="table-danger">
	<%
	for(int i=2;i<=9;i++){%>
		<td align="center"><b><%=i%>단</b></td>
	<%}%>
	</tr>
	<%for(int i=1;i<=9;i++){%>
		<tr>
		<%
		for(int dan=2;dan<=9;dan++){%>
				<td align="center"><%=dan%>x<%=i%>=<%=dan*i%></td>
			<%}%>
			</tr>
	<%}
	%>
	<script>
		//자바스크립트,제이쿼리도 모두 가능하다
		$("td").css("cursor","crosshair");
		$("td").mouseover(function() {
			$(this).css({
				"color":"red",
				"background-color":"yellow"
				});
			$(this).siblings().css({
				"color":"yellow",
				"background-color":"red"
			});
		});
	</script>
</table>
</body>
</html>