<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="data.dto.BookingDto"%>
<%@page import="data.dao.BookingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 상세</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	pre{
		font-family: 'Dongle';
		font-size:30px;
	}
	div{
		float:top;
		}
</style>
<script>
	function funcdel(num){
		//삭제버튼에서 보낸 num값 확인
		//alert(num);
		var a=confirm("해당 주문사항을 삭제하려면 [확인]을 눌러주세요");
		//확인 클릭시 a=true 취소 클릭시 a=false
		if(a){
			location.href="deletebooking.jsp?num="+num;
		}
	}
</script>

</head>
<body>
<%
	//num 읽기
	String num=request.getParameter("num");

	//dao 선언
	BookingDao dao=new BookingDao();
	
	//num에 해당하는 dto 얻기
	BookingDto dto=dao.getBooking(num);
	
	//NumberFormat,SimpleDateFormat
	NumberFormat nf=NumberFormat.getCurrencyInstance();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd a hh시");
	
	//dto 데이터를 출력하는데
	//foodphoto는 컴마로 분리해서 이미지 출력(이름도?)
	String []fpt=dto.getFoodphoto().split(",");
	
	
	//foodprice는 컴마로 분리해서 반복문에서 총금액에 더하는데
	//이때 int로 변환후 더해야한다
	String []fpr=dto.getFoodprice().split(",");
	int totalmoney=0;
	for(int i=0;i<fpr.length;i++){
		totalmoney+=Integer.parseInt(fpr[i]);
	}
	
	String []bd=dto.getBookday().split("T");
	String a=dto.getFoodphoto()+",";
	String []menu=a.split(".jpg,");
	//.의 위치 얻기
// 	int dotloc=fphoto[i].indexOf('.');
	//.의 위치 전까지 분리하기
// 	String menuname=fphoto[i].substring(0,dotloc);

%>
<div style="margin:30px 30px;width:700px;">
	<h4 class="alert alert-danger">예약 상세</h4>
	<table class="table table-bordered">
		<tr>
			<td style="background-color:#00d8ff;" valign="middle" align="center">
			<b>예약자명</b></td>
			<td align="center">
			<img src="../image/<%=dto.getGender().equals("m")?"":"fe"%>male.png" width="40">
			&nbsp;<%=dto.getName()%></td>
		</tr>
		<tr>
			<td style="background-color:#00d8ff;" align="center"><b>예약일</b></td>
			<td align="center"><%=bd[0]+" "+bd[1]%></td>
		</tr>
		<tr>
			<td style="background-color:#00d8ff;" align="center"><b>인원수</b></td>
			<td align="center"><%=dto.getInwon()%>명</td>
		</tr>
		<tr>
			<td style="background-color:#00d8ff;" valign="middle" align="center"><b>메세지</b></td>
			<td align="center"><pre><%=dto.getMessage()%></pre></td>
		</tr>
		<tr>
			<td style="background-color:#00d8ff;" align="center"><b>작성일</b></td>
			<td align="center"><%=sdf.format(dto.getWriteday())%></td>
		</tr>
		<tr>
			<td style="background-color:#00d8ff;font-size:30px;" valign="middle" align="center"><b>주문메뉴</b></td>
			<td>
			<table class="table table-bordered" style="border:1px solid white;width:300px;">
			<%for(int i=0;i<fpt.length;i++){%>
				<tr>
				<td><img src="../image/<%=fpt[i]%>" width="50" height="50" border="1"
				style="margin-left:30px;margin-bottom:5px;"></td>
				<td><b><%=menu[i]%></b></td>
				<td><b><%=nf.format(Integer.parseInt(fpr[i]))%></b></td>
				</tr>
			<%}%>
			<tr>
			<td colspan="3" align="center"><h3 align="center">총 금액 : <%=nf.format(totalmoney)%></h3></td>
			</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<button type="button" style="width:90px;" class="btn btn-warning" onclick="location.href='bookingupdateform.jsp?num=<%=num%>'">수정</button>
				<button type="button" style="width:90px;" class="btn btn-danger" onclick="funcdel(<%=num%>)">삭제</button><!-- 형태가 숫자면 ''안써도 되고 형태가 문자면 '' 있어야 함  -->
				<button type="button" style="width:90px;" class="btn btn-info" onclick="location.href='startbooking.jsp'">목록</button>
			</td>
		</tr>
	</table>
</div>
</body>
</html>