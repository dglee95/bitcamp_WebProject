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
	th{
		text-align: center;
		height: 30px;
		line-height: 30px;
	}
	.td1>label>input{
		font-size: 20px;
	}
</style>

</head>
<body>
<div style="margin-left:200px;">
	<form action="ex8_action.jsp" method="post">
		<table class="table table-bordered" style="width:400px;">
			<caption align="top">Ex8번 폼</caption>
			<tr>
				<th width="140" class="table-primary">이름</th>
				<td>
					<input type="text" name="irum" class="form-control" style="width:200px;" required="required"
					placeholder="이름을 입력하세요">
				</td>
			</tr>
			<tr>
				<th width="140" class="table-primary">성별</th>
				<td>
					<label><input type="radio" name="gender" value="남자" checked="checked">남자</label>
					<label><input type="radio" name="gender" value="여자">여자</label>
				</td>
			</tr>
			<tr>
				<th width="140" class="table-primary">백신</th>
				<td>
					<label><input type="checkbox" name="vaccine">맞음</label>
				</td>
			</tr>
			<tr>
				<th width="140" class="table-primary">좋아하는 메뉴</th>
				<td class="td1">
					<label><img src="../image/12.jpg" width="50" height="50" border="1"><br><input type="checkbox" name="food" value="../image/12.jpg">라면</label>
					<label><img src="../image/11.jpg" width="50" height="50" border="1"><br><input type="checkbox" name="food" value="../image/11.jpg">빙수</label>
					<label><img src="../image/5.jpg" width="50" height="50" border="1"><br><input type="checkbox" name="food" value="../image/5.jpg">콘치즈</label>
					<label><img src="../image/10.jpg" width="50" height="50" border="1"><br><input type="checkbox" name="food" value="../image/10.jpg">덮밥</label>
				</td>
			</tr>
			<tr>
				<th width="140" class="table-primary">주소</th>
				<td>
					<select class="form-select" name="addr">
						<option value="서울">서울</option>
						<option value="인천">인천</option>
						<option value="대전">대전</option>
						<option value="부산">부산</option>
						<option value="진주">진주</option>
					</select>
				</td>
			</tr>
			<tr>
			<th width="140" class="table-primary">하고 싶은 말</th>
			<td><textarea style="width:300px;height:100px;" name="content"></textarea></td>
			</tr>
			<tr>
			
			<td colspan="2" align="center">
			<button type="submit" class="btn btn-info">Submit</button>
			</td>
			</tr>	
		
		
		</table>
	</form>
</div>
</body>
</html>