<%@page import="java.util.List"%>
<%@page import="data.dto.SubwayUserDto"%>
<%@page import="data.dao.SubwayUserDao"%>
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
</style>
<%
// dto.getPower().equals("admin")?"admin":Integer.toString(dto.getBirthiden()).substring(0, 1).equals("2")||Integer.toString(dto.getBirthiden()).substring(0, 1).equals("4")?"female":"male"
	String myid=(String)session.getAttribute("myid");
	SubwayUserDao dao=new SubwayUserDao();
	List<SubwayUserDto> list=dao.searchId(myid);
	SubwayUserDto dto=list.get(0);
%>
</head>
<body>
	<div>
		<img id="blah" src="../testimage/<%=dto.getMyphoto()%>.jpg" alt="your image" />
		<form action="modifyaction.jsp" method="post" enctype="multipart/form-data">
			<input type="hidden" name="num" value=<%=dto.getNum()%>>
			<table class="table table-bordered">
				<input>
			
				<tr align="center" valign="middle">
					<th>이름</th>
					<td align="left"><%=dto.getMyirum()%></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>