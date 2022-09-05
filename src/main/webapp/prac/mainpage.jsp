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
	
	#result{
		animation:mymove1;
		animation-duration:3s;
		animation-fill-mode: forwards;
		visibility: hidden;
		display:inline-block;
		position: relative;
		left:50px;
		top:50px;
		font-size: 100px;
		border-radius:20px;
		
		
	}
	@keyframes mymove1{
		from{
			background-color:blue;
			transform: rotate(-360deg);
		}
		to{
			background-color:red;
			transform: rotate(360deg);
		}
	}
</style>

</head>
<body>
<!-- 	<div class="container" style="margin:50px 50px;"> -->
<!-- 		<button type="button" class="btn btn-primary btn-lg" id="rnd">랜덤</button> -->
<!-- 		<span id="su"></span> -->
<!-- 		<div id="result"></div> -->
		
<!-- 	</div> -->
	<div id="loginpage" style="width:700px;">
		<form action="loginaction.jsp" method="post">
			<table class="table table-bordered">
				<tr>
					<th>이름</th>
					<td>
						<input type="text" class="form-control" placeholder="이름" autofocus style="width:100px;">
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>
					<div class="input-group" style="width:300px;">
						<input type="text" class="form-control" placeholder="아이디" width="200">
						<button type="button" id="idchk">아이디중복확인</button>
					</td>
					</div>
				</tr>
				
			
			</table>
		</form>
	</div>
	<script type="text/javascript">
// 		$("#rnd").click(function(){
// 			var n=Math.floor(Math.random()*100+1);
// 			$("#result").css("visibility","visible");
// 			$("#su").text(n);
// 			if(n%5==1){
// 				$("#result").text("한식");
// 			}else if(n%5==2){
// 				$("#result").text("중식");
// 			}else if(n%5==3){
// 				$("#result").text("일식");
// 			}else if(n%5==4){
// 				$("#result").text("양식");
// 			}else{
// 				$("#result").text("아시아");
// 			}
// 		});
		
// 		$("result").click(function(){
			
// 		});
	</script>
</body>
</html>