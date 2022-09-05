<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레스토랑 예약</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Single Day';
	}
</style>
<script type="text/javascript">
	function check(){
		var len=$("input[name='food']:checked").length;
		if(len<2){
			alert("주문 메뉴는 최소 2개 이상 선택해주세요");
			return false;
		}
	}
</script>
</head>
<body>
<div style="margin:30px 30px;">
<!-- onsubmit 이벤트는 action이 호출되기 전에 발생
리턴값을 false를 받으면 action이 호출되지 않는다 -->
	<form action="addaction.jsp" method="post" onsubmit="return check()">
		<table class="table table-bordered" style="width:700px;">
			<caption align="top"><h4><b>레스토랑 예약</b></h4></caption>
			<tr>
				<th width="100" style="background-color:#b0e0e6">예약자명</th>
				<td>
					<input type="text" name="name" class="form-control" placeholder="예약자이름"
					autofocus="autofocus" required="required" style="width:200px;">
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">성별</th>
				<td>
					<label>
						<input type="radio" name="gender" value="f">
						<img src="../image/female.png" width="50">
					</label>
					&nbsp;
					<label>
						<input type="radio" name="gender" value="m" checked="checked">
						<img src="../image/male.png" width="50">
					</label>
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">예약시간</th>
				<td>
					<input type="datetime-local" name="bookday" class="form-control"
					style="width:220px;" required="required">
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">인원수</th>
				<td>
					<input type="number" name="inwon" min="1" max="6" value="1" 
					class="form-control" style="width:80px;">
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">메뉴선택</th>
				<td>
					<label>
						<input type="checkbox" name="food" value="치즈샌드위치.jpg,12000">
						치즈샌드<br>
						<img src="../image/치즈샌드위치.jpg" width="80" height="80" border="1">
					</label>
					<label>
						<input type="checkbox" name="food" value="떡볶이.jpg,9000">
						떡볶이<br>
						<img src="../image/떡볶이.jpg" width="80" height="80" border="1">
					</label>
					<label>
						<input type="checkbox" name="food" value="돼지갈비.jpg,23000">
						돼지갈비<br>
						<img src="../image/돼지갈비.jpg" width="80" height="80" border="1">
					</label>
					<label>
						<input type="checkbox" name="food" value="똠양꿍.jpg,17000">
						똠양꿍<br>
						<img src="../image/똠양꿍.jpg" width="80" height="80" border="1">
					</label>
					<label>
						<input type="checkbox" name="food" value="알밥.jpg,13000">
						알밥<br>
						<img src="../image/알밥.jpg" width="80" height="80" border="1">
					</label>
					<label>
						<input type="checkbox" name="food" value="초밥.jpg,30000">
						초밥<br>
						<img src="../image/초밥.jpg" width="80" height="80" border="1">
					</label>
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">메세지</th>
				<td>
					<textarea style="width:500px;height:80px;" class="form-control" 
					required="required" name="message"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-danger"
					style="width:120px;">예약하기</button>
					
					<button type="reset" class="btn btn-primary"
					style="width:120px;">다시하기</button>
					
					<button type="button" class="btn btn-success"
					style="width:120px;" onclick="location.herf='startbooking.jsp'">예약목록</button>
			</tr>
		</table>
	</form>
</div>
</body>
</html>