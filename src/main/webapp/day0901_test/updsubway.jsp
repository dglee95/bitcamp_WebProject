<%@page import="data.dto.SubwayDto"%>
<%@page import="data.dao.SubwayDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정폼</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	
	div.updstation{
		position:absolute;
		left:10%;
		top:10%;
	}
	div.updstation th{
		background-color:#48d1cc;
		
	}
	#city{
		float:left;
	}
	.btn-neon-green{color:#36eb40;outline:2px solid #36eb40;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-green:hover{background:#36eb40;color:#fff;box-shadow: 0 0 5px #36eb40, 0 0 25px #36eb40, 0 0 50px #36eb40, 0 0 100px #36eb40;}
	/* .btn-neon-green.focus,.btn-neon-green:focus{color:#fff;background-color:#36eb40;border-color:#36eb40;box-shadow:0 0 0 .2rem #36eb40} */
	.btn-neon-green.disabled,.btn-neon-green:disabled{color:#fff;background-color:#36eb40;border-color:#36eb40}
	.btn-neon-green:not(:disabled):not(.disabled).active,.btn-neon-green:not(:disabled):not(.disabled):active,.show>.btn-neon-green.dropdown-toggle{color:#fff;background-color:#36eb40;border-color:#36eb40}
	.btn-neon-green:not(:disabled):not(.disabled).active:focus,.btn-neon-green:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-green.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #36eb40}
	.btn-neon-red{color:#ff0053;outline:2px solid #ff0053;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-red:hover{background:#ff0053;color:#fff;box-shadow: 0 0 5px #ff0053, 0 0 25px #ff0053, 0 0 50px #ff0053, 0 0 100px #ff0053;}
	/* .btn-neon-red.focus,.btn-neon-red:focus{color:#fff;background-color:#ff0053;border-color:#ff0053;box-shadow:0 0 0 .2rem #ff0053} */
	.btn-neon-red.disabled,.btn-neon-red:disabled{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active,.btn-neon-red:not(:disabled):not(.disabled):active,.show>.btn-neon-red.dropdown-toggle{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active:focus,.btn-neon-red:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-red.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #ff0053}
	
</style>

</head>
<body>
<%
	String num=request.getParameter("num");

	SubwayDao dao=new SubwayDao();
	
	//num에 해당하는 dto 얻기
	SubwayDto dto=dao.getSubwayNum(num);
	
	String city=dto.getManager().substring(0, 2);
%>

<div class="updstation"  style="width:600px;">
<form action="updaction.jsp" method="post">
<table class="table table-bordered">
	
	<caption align="top" style="color:#48D1CC;font-size:30px;"><i class='fas fa-wrench' style='font-size:24px'></i>&nbsp;수정</caption>
	<input type="hidden" name="num" value="<%=dto.getNum()%>">
	<tr align="center" valign="middle">
		<th width="100" style="background-color:#48d1cc;align:center;valign:middle;">지역</th>
		<td>
			<select id="city" required="required" class="form-select" style="width:100px;">
				<option hidden disabled selected>선택</option>
				<option value="서울" <%=city.equals("서울")?"selected":""%>>서울</option>
				<option value="부산" <%=city.equals("부산")?"selected":""%>>부산</option>
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th width="150" >호선</th>
		<td>
			<input type="text" name="line" required="required" class="form-control" value="<%=dto.getLine()%>">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>역 이름</th>
		<td>
			<input type="text" id="station" name="station" class="form-control" value="<%=dto.getStation()%>">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>옛날 주소</th>
		<td>
			<input type="text" name="oaddr" required="required" class="form-control" value="<%=dto.getOaddr()%>">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>도로명 주소</th>
		<td>
			<input type="text" name="naddr" required="required" class="form-control"  value="<%=dto.getNaddr()%>">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>철도운영기관</th>
		<td>
			<input type="text" name="manager"	class="form-control"  value="<%=dto.getManager()%>">
		</td> 
	</tr>
	<tr style="border:0px solid white;">
		<td colspan="2" align="center">
			<button type="submit" id="btnsave" class="btn btn-neon-green" >수정</button>
			<button type="button" id="main" class="btn btn-neon-red" onclick="location.href='subwaymain.jsp'">뒤로</button>
		</td>
	</tr>
	
</table>
</form>
</div>
</body>
</html>