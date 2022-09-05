<%@page import="data.dto.BookingDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.BookingDao"%>
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
	//dao선언
	BookingDao dao=new BookingDao();
	
	//전체데이터 가져오기
	List<BookingDto> list=dao.getAllBookings();
%>
<div style="margin:30px 30px;width:700px;">
	<div class="input-group">
		<h4 class="alert alert-success" style="width:500px;"><b>전체 예약 목록 확인</b></h4>
		<button type="button" class="btn btn-info"
		onclick="location.href='bookingform.jsp'" style="margin-left:10px;height:60px;">예약하기</button>
	</div>
	<h5>총 <%=list.size()%> 건의 예약이 있습니다</h5>
	<br>
	<table class="table table-bordered">
		<tr style="background-color:#2e8b87;color:#fff">
			<th width="70">번호</th>
			<th width="200">예약자명</th>
			<th width="70">인원수</th>
			<th width="200">예약시간</th>
			<th>상세보기</th>
		</tr>
	<%
	for(int i=0;i<list.size();i++){
		BookingDto dto=list.get(i);%>
		<tr>
			<td align="center"><%=i+1%></td>
			<td>
			<!-- if방법 -->
<%-- 			<%if(dto.getGender().equals("f")){ %> --%>
<!-- 				<img src="../image/female.png" width="40"> -->
<%-- 			<%}else{ %> --%>
<!-- 				<img src="../image/male.png" width="40"> -->
<%-- 			<%} %> --%>
		<img src="../image/<%=dto.getGender().equals("f")?"female":"male"%>.png" width="40">
			&nbsp;<%=dto.getName()%></td>
			<td align="center"><%=dto.getInwon()%>명</td>
			<td align="center"><%=dto.getBookday()%></td>
			<td align="center">
				<button class="btn btn-outline-danger"
				onclick="location.href='bookingview.jsp?num=<%=dto.getNum()%>'">상세보기</button>
			</td>
		</tr>
	<%}
	%>
	</table>
</div>
</body>
</html>