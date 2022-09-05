<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SimpleBoardDto"%>
<%@page import="data.dao.SimpleBoardDao"%>
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
	
	pre{
		font-family: 'Jua';
	}
	
	form{
		display:inline;
	}
	th{
		text-align:center;
		vertical-align:middle;
	}
	span.day{
		color:#979797;
		font-size:0.9em;
	}

</style>


</head>
<body>
<!-- dao 선언 방식 #1 -->
<jsp:useBean id="dao" class="data.dao.SimpleBoardDao"/>
<%
	request.setCharacterEncoding("utf-8");
	//num을 읽는다
	String num=request.getParameter("num");
	
	//dao선언 방식 #2
// 	SimpleBoardDao dao=new SimpleBoardDao();
	
	//조회수 1증가
	dao.updateReadCount(num);
	
	//조회수1 증가하고 나서 dto 가져오기
	SimpleBoardDto dto=dao.getContent(num);
	
	//날짜 형식
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd. a hh시' 'm분");

%>
<script type="text/javascript">
	function updateform(){
		$("#updateform").submit();
	}
	function deleteform(){
		$("#deleteform").submit();
	}
	
</script>

<div style="margin:30px 30px;">
	<table class="table table-bordered" style="width:800px;">
		<caption align="top"><h2><b><i class="bi bi-card-heading"></i>&nbsp;<%=dto.getSubject()%></b></h2></caption>
			<tr>
				<td colspan="2"><b>작성자 : <%=dto.getWriter()%></b><br>
				<span class="day"><%=sdf.format(dto.getWriteday())%>
				&nbsp;&nbsp;조회&nbsp;<%=dto.getReadcount()%></span>
				</td>
			</tr>
			<tr>
				<!-- 여러줄을 입력했어도 출력시 한줄로 나온다 -->
				<td width="800" height="150">
				<%=dto.getContent().replace("\n","<br>")%></td>
			</tr>
			<tr align="center">
				<td colspan="4">
				<button type="button" class="btn btn-outline-primary"
				onclick="location.href='boardform.jsp'" style="float:left;"><i class="bi bi-pencil"></i>&nbsp;글쓰기</button>
				<button type="button" class="btn btn-outline-success"
				onclick="location.href='boardlist.jsp'"><i class="bi bi-card-text"></i>&nbsp;목록가기</button>
				<form action="updatepassform.jsp" method="post" id="updateform">
				<input type="hidden" name="num" value="<%=num%>">
				<button type="button" class="btn btn-outline-warning"
				onclick="return updateform()"><i class="bi bi-pencil-square"></i>&nbsp;수정하기</button>
				</form>
				<form action="deletepassform.jsp" method="post" id="deleteform">
				<input type="hidden" name="num" value="<%=num%>">
				<button type="button" class="btn btn-outline-danger"
				onclick="return deleteform()"><i class="bi bi-trash-fill"></i>&nbsp;삭제하기</button>
				</form>
				</td>
				
			</tr>
	</table>
</div>
</body>
</html>













