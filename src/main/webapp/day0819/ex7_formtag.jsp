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
<div style="margin-left:200px;">
	<form action="ex7_action.jsp" method="post">
		<table class="table table-bordered" style="width:400px;">
			<caption align="top">Ex7번 폼</caption>
			<tr>
				<th width="120" class="table-warning">글자색</th>
				<td>
					<input type="color" name="fcolor" class="form-control" style="width:100px;"
					value="#ffccff">
				</td>
			</tr>
			<tr>
				<th width="120" class="table-warning">인형선택</th>
				<td>
					<select class="form-select" name="doll">
						<option value="../image/01.png">남자애</option>
						<option value="../image/02.png">모자쓴애</option>
						<option value="../image/03.png">리본머리애</option>
						<option value="../image/04.png">허수아비</option>
					</select>
				</td>
			</tr>
			<tr>
				<th width="120" class="table-warning">오늘점심</th>
				<td>
					<label><input type="radio" name="food" value="../image/1.jpg">샌드위치#1</label>
					<label><input type="radio" name="food" value="../image/3.jpg" checked="checked">육개장</label>
					<label><input type="radio" name="food" value="../image/8.jpg">샌드위치#2</label>
					<label><input type="radio" name="food" value="../image/11.jpg">망고빙수</label>
				</td>
			</tr>
			<tr>
				<th width="120" class="table-warning">가능한IT언어</th>
				<td>
					<select class="form-select" name="itlang" size="5" multiple="multiple">
						<option value="Java">Java</option>
						<option value="jQuery">jQuery</option>
						<option value="Spring">Spring</option>
						<option value="Oracle">Oracle</option>
						<option value="C++">C++</option>
					</select>
				</td>
			</tr>
			<tr>
			<td colspan="2" align="center">
			<button type="submit" class="btn btn-danger">서버 전송</button>
			</td>
			</tr>	
		
		
		</table>
	</form>
</div>
</body>
</html>