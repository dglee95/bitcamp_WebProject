<%@page import="data.dto.MyShopDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.MyShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	.table-purple{--bs-table-bg:#9560F7;--bs-table-striped-bg:#c5e8ef;--bs-table-striped-color:#000;--bs-table-active-bg:#badce3;--bs-table-active-color:#000;--bs-table-hover-bg:#bfe2e9;--bs-table-hover-color:#000;color:#000;border-color:#badce3}
	.table{--bs-table-bg:transparent;--bs-table-accent-bg:transparent;--bs-table-striped-color:#212529;--bs-table-striped-bg:rgba(0, 0, 0, 0.05);--bs-table-active-color:#212529;--bs-table-active-bg:rgba(0, 0, 0, 0.1);--bs-table-hover-color:#212529;--bs-table-hover-bg:rgba(0, 0, 0, 0.075);width:100%;margin-bottom:1rem;color:#212529;vertical-align:top;
	border-collapse: collapse;border-style: hidden;box-shadow: 0 0 0 1px #000;}
</style>
</head>
<body>
<%
	MyShopDao dao=new MyShopDao();
	List<MyShopDto> list=dao.getAllSangpums();
	request.setAttribute("list", list);
%>
<div style="margin: 30px 30px;">
	<h3 class="alert alert-danger" style="width:800px;">MyShop 목록</h3>
	<br><br>
	<table class="table table-bordered" style="width:800px;">
		<tr class="table-purple" align="center" valign="middle">
			<th width="50">번호</th>
			<th width="50">num</th>
			<th width="250">상품명</th>
			<th width="60">색상</th>
			<th width="100">가격</th>
			<th width="150">입고일</th>
			<th width="200">등록일</th>
		</tr>
		<c:forEach var="dto" items="${list}" varStatus="i">
			<tr align="center" valign="middle">
				<td>${i.count}</td>
				<td>${dto.num}</td>
				<td align="left"><img src='../image2/${dto.photo}.jpg' width="60" height="60" class="img-thumbnail" style="border:2px solid black;">&nbsp;${dto.sangpum }</td>
				<td style="background-color:${dto.color};color:#fff;text-shadow:2px 2px 2px #000;">${dto.color }</td>
				<td align="right">
					<fmt:formatNumber type="currency" value="${dto.price }"/><br>
					<c:if test="${dto.price>50000}">
							<span style="color:${dto.color};">고가제품</span>				
					</c:if> 
					<c:if test="${dto.price<=50000}">
							<span style="color:${dto.color};">저가제품</span>
					</c:if> 
				</td>
				<td>${dto.ipgoday}</td>
				<td><fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH시"/></td>
			</tr>
		</c:forEach>
	</table>
</div>


</body>
</html>