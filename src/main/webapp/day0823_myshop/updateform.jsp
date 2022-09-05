<%@page import="data.dto.MyShopDto"%>
<%@page import="data.dao.MyShopDao"%>
<%@page import="java.util.Date"%>
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
<%
//수정 코드는 항상 이 3개가 필요함
	//num을 읽는다
	String num=request.getParameter("num");

	//dao 선언
	MyShopDao dao=new MyShopDao();
	
	//num에 해당하는 dto 얻기
	MyShopDto dto=dao.getSangpum(num);
	
	//가장 중요한 한가지
	//폼 안에 반드시 num을 hidden으로 넣어줘야한다 (수정할 때 이게 가장 중요함)
%>
<div style="margin: 30px 30px;">
	<form action="updateaction.jsp" method="post">
		<!-- hidden: 보이진 않지만 폼단위로 전송시 같이 전송이 된다-->
		<input type="hidden" name="num" value="<%=num%>">
		
		<table class="table table-bordered" style="width:400px;">
			<caption align="top"><h4><b>상품수정</b></h4></caption>
			<tr>
				<th width="100" style="background-color:#48d1cc;">상품명</th>
				<td>
					<input type="text" name="sangpum" required="required"
					class="form-control" value="<%=dto.getSangpum()%>">
				</td> 
			</tr>
			<tr>
				<th width="100" style="background-color:#48d1cc;">상품사진</th>
				<td>
					<div class="input-group">
					<select name="photo" id="photo" class="form-select" style="width:120px;">
						<option value="11" <%=dto.getPhoto().equals("11")?"selected":""%>>단화</option>
						<option value="10" <%=dto.getPhoto().equals("10")?"selected":""%>>스카프</option>
						<option value="29" <%=dto.getPhoto().equals("29")?"selected":""%>>모자</option>
						<option value="31" <%=dto.getPhoto().equals("31")?"selected":""%>>화이트자켓</option>
						<option value="33" <%=dto.getPhoto().equals("33")?"selected":""%>>원피스</option>
						<option value="26" <%=dto.getPhoto().equals("26")?"selected":""%>>머리끈</option>
						<option value="30" <%=dto.getPhoto().equals("30")?"selected":""%>>머리띠</option>
					</select>
					<img src="../image2/<%=dto.getPhoto()%>.jpg" width="40" height="40" id="myphoto">
					<script type="text/javascript">
						//select 변경시 사진도 변경되도록 이벤트를 추가하세요
						$("#photo").change(function(){
							var src="../image2/"+$(this).val()+".jpg";
							$("#myphoto").attr("src",src);	
						});
					</script>
					</div>
				</td> 
			</tr>
			<tr>
				<th width="100" style="background-color:#48d1cc;">색 상</th>
				<td>
					<input type="color" name="color" value="<%=dto.getColor()%>"
					class="form-control" style="width:100px;">
				</td> 
			</tr>
			<tr>
				<th width="100" style="background-color:#48d1cc;">가격</th>
				<td>
					<input type="text" name="price" required="required"
					class="form-control" pattern="[0-9]{3,}" value="<%=dto.getPrice()%>"><!-- 0-9만 입력가능,3글자이상 -->
				</td> 
			</tr>
			<tr>
				<th width="100" style="background-color:#48d1cc;">입고일</th>
				<td>
					<input type="date" name="ipgoday" value="<%=dto.getIpgoday()%>"
					class="form-control">
				</td> 
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">상품수정</button>
					<button type="button" class="btn btn-info"
					onclick="location.href='shoplist.jsp'">상품목록</button>
				</td>
				
			</tr>
			
		</table>
	</form>
</div>

</body>
</html>

