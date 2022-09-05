<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	
	th{
		text-align:center;
		vertical-align:middle;
	}

	.bd{
		border-color:white;
		outline: 1px solid white;
	}
</style>

</head>
<body>
<div class="container" style="margin:30px 30px;width:800px;">
	<form action="boardaction.jsp" method="post">
		<table class="table table-bordered">
		<caption align="top"><h5><b><i class="bi bi-pencil-square"></i> 글쓰기</b></h5></caption>
			<tr>
				<th width="100" class="table-light">작성자</th>
				<td><input type="text" class="form-control form-control-sm" name="writer" required="required" autofocus></td>
				<th class="table-light">비밀번호</th>
				<td><input type="password" class="form-control form-control-sm" name="pass" required="required" 
				pattern="[0-9]{4,}" maxlength="4" placeholder="****"></td>
			</tr>
			<tr>
				<th class="table-light">제 목</th>
				<td colspan="3"><input type="text" class="form-control" placeholder="제목을 입력하세요"
				name="subject" required="required"></td>
			</tr>
			<tr>
				<td colspan="4">
				<label for="comment">Comments:</label>
				<textarea style="height:500px;" id="comment" class="form-control" required="required" 
				name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="4" class="bd">
					<!-- type이 image거나 submit 일 경우 기본 기능이 submit입니다 -->
					<input type="image" src="../image2/submit.png" style="width:120px;height:50px;">
					<img src="../image2/list.png" onclick="location.href='boardlist.jsp'" 
					style="height:120px;margin-bottom:30px;">
					
				</td>
			</tr>	
		</table>
		</form>
</div>
</body>
</html>