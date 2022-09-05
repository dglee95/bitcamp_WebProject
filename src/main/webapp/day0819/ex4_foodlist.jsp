<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.FoodDto"%>
<%@page import="java.util.List"%>
<%@page import="data.day0819.MyFood"%>
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
	//food 목록 가져오기
	MyFood food=new MyFood();
	List<FoodDto> list=food.getFoodList();
%>
<table class="table table-bordered" style="width:600px;">
	<caption align="top"><b>Food 목록</b></caption>
	<tr class="table-secondary">
		<th width="50">번호</th>
		<th width="150">메뉴명</th>
		<th width="150">사진</th>
		<th width="100">가격</th>
		<th>주문일</th>
	</tr>
	<%
	for(FoodDto dto:list){%>
		<tr valign="middle">
			<td align="center"><%=dto.getNo()%></td>
			<td><%=dto.getFoodName()%></td>
			<td align="center">
			<img src="../image/<%=dto.getFoodPhoto()%>" width="80" height="80" border="1"></td>
			<td align="right">
			<%
				//지역 화폐 단위와 3자리마다 컴마 찍을 때
				NumberFormat nf=NumberFormat.getCurrencyInstance();
			%>
			<%=nf.format(dto.getPrice())%>
			</td>
			<td align="center"><%=dto.getDay()%></td>
		</tr>
	<%}
	%>

</table>
</body>
</html>