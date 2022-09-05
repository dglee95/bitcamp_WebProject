<%@page import="data.dao.BookingDao"%>
<%@page import="data.dto.BookingDto"%>
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
<%
	//num 읽기
	String num=request.getParameter("num");

	//dao 선언
	BookingDao dao=new BookingDao();
	
	//num에 해당하는 dto 얻기
	BookingDto dto=dao.getBooking(num);
	

	
%>
<body>
<div style="margin:30px 30px;">
<!-- onsubmit 이벤트는 action이 호출되기 전에 발생
리턴값을 false를 받으면 action이 호출되지 않는다 -->
	<form action="updateaction.jsp" method="post" onsubmit="return check()">
		<input type="hidden" name="num" value="<%=num%>">
		
		<table class="table table-bordered" style="width:700px;">
			<caption align="top"><h4><b>레스토랑 예약</b></h4></caption>
			<tr>
				<th width="100" style="background-color:#b0e0e6">예약자명</th>
				<td>
					<input type="text" name="name" class="form-control" placeholder="예약자이름"
					required="required" style="width:200px;" value="<%=dto.getName()%>">
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">성별</th>
				<td>
					<label>
						<input type="radio" name="gender" value="f" <%=dto.getGender().equals("f")?"checked='checked'":""%>>
						<img src="../image/female.png" width="50">
					</label>
					&nbsp;
					<label>
						<input type="radio" name="gender" value="m" <%=dto.getGender().equals("m")?"checked='checked'":""%>>
						<img src="../image/male.png" width="50">
					</label>
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">예약시간</th>
				<td>
					<input type="datetime-local" name="bookday" class="form-control"
					style="width:220px;" required="required" value="<%=dto.getBookday()%>">
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">인원수</th>
				<td>
					<input type="number" name="inwon" min="1" max="6"
					class="form-control" style="width:80px;" value="<%=dto.getInwon()%>">
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">메뉴선택</th>
				<td>
					<%
						//출력할 메뉴명
						String []inpFood={"치즈샌드위치.jpg","떡볶이.jpg","돼지갈비.jpg","똠양꿍.jpg","알밥.jpg","초밥.jpg"};
						//출력할 가격
						String []inpPrice={"12000","9000","23000","17000","13000","30000"};
						
						String []title={"치즈샌드","떡볶이","돼지갈비","똠양꿍","알밥","초밥"};
						//db에 저장된 선택메뉴들
						String []selectFood=dto.getFoodphoto().split(",");
						
						for(int i=0;i<inpFood.length;i++){
							String []db=inpFood[i].split("[.]");
							//db[0]의 길이가 4글자 이상이면 4글잒지만 추출하기
							if(db[0].length()>4)
								db[0]=db[0].substring(0,4);//0~3까지 추출
							boolean find=false;
								for(int j=0;j<selectFood.length;j++){
									if(inpFood[i].equals(selectFood[j]))
										find=true;
							}
							%>
							<label>
								<input type="checkbox" name="food" value="<%=inpFood[i]%>,<%=inpPrice[i]%>"
								<%=find?"checked":""%>>
								<%=db[0]%><br>
								<img src="../image/<%=inpFood[i]%>" width="80" height="80" border="1">
							</label>
							<%
						}
					%>
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color:#b0e0e6">메세지</th>
				<td>
					<textarea style="width:500px;height:80px;" class="form-control" 
					required="required" name="message"><%=dto.getMessage()%></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-danger"
					style="width:120px;">예약수정</button>
					
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