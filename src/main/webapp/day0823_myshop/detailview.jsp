<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="data.dto.MyShopDto"%>
<%@page import="data.dao.MyShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
* {
	font-family: 'Jua';
}

img{
	position: absolute;
	left: 10%;
	top: 10%;
}

div{
	position: absolute;
	left: 45%;
	top: 10%;
	font-size:41px;
}
button{
	position: absolute;
	left: 35%;
	top: 60%;
	width: 300px;
}



th {
	text-align: center;
}

td{
	text-align:center;
}

input{
	border:1px solid white;
	border-radius:1000px;
	width:40px;
	height:40px;
}
.box{
		width: 40px; height: 40px;
		border: 1px solid black;
		border-radius: 100px;
		box-shadow:5px 5px 5px #ccc;
		display: inline-block;
		position: absolute;
		left:480px;
		top:97px;
	}

</style>

</head>
<body>
	<%
	String num = request.getParameter("num");
	MyShopDao dao = new MyShopDao();
	MyShopDto dto = dao.getSangpum(num);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	NumberFormat nf=NumberFormat.getCurrencyInstance();
	%>


<img src="../image2/<%=dto.getPhoto()%>.jpg" width="300" heigt="400" class="img-thumbnail">
	<div>
		<table class="table table-bordered" style="width:600px; height:400px;">
			<tr>
				<th class="table-info">상 품 명</th>
				<td><%=dto.getSangpum() %></td>
			</tr>
			<tr>
				<th class="table-info">색  상 </th>
				<td>
				<%=dto.getColor()%>
				<div class="box" style="background-color: <%=dto.getColor()%>"></div>
				</td>
			</tr>
			<tr>
				<th class="table-info">가  격 </th>
				<td><%=nf.format(dto.getPrice())%></td>
			</tr>
			<tr>
				<th class="table-info">입 고 일</th>
				<td><%=dto.getIpgoday()%></td>
			</tr>
			<tr>
				<th class="table-info">등 록 일</th>
				<td><%=sdf.format(dto.getWriteday())%></td>
			</tr>
		</table>
	</div>
	<button type="button" class="btn btn-outline-success"
	onclick="history.back()">뒤로
</body>
</html>