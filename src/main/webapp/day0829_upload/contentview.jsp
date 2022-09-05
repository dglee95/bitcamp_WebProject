<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="data.dto.SmartDto"%>
<%@page import="data.dao.SmartDao"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	img{
		max-width:490px;
	}

</style>


</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String num=request.getParameter("num");
	String currentPage=request.getParameter("currentPage");
	
	SmartDao dao=new SmartDao();

	dao.updateReadCount(num);
	
	SmartDto dto=dao.getData(num);

	
	//날짜 형식
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd. a hh시' 'm분");

%>
<div style="margin:30px 30px;width:500px;">
	<table class="table table-bordered">
		<caption align="top">
		<div class="input-group">

			<img src="../save/<%=dto.getMainphoto()%>" width="70" height="70" class="rounded-circle">&nbsp;
			<h2><b><i class="bi bi-card-heading"></i>&nbsp;<%=dto.getSubject()%></b></h2></div></caption>
			<tr>
				<td colspan="2"><b>작성자 : <%=dto.getWriter()%></b><br>
				<span class="day"><%=sdf.format(dto.getWriteday())%>
				&nbsp;&nbsp;조회&nbsp;<%=dto.getReadcount()%></span>
				</td>
			</tr>
			<tr height="150">
<!-- 				여러줄을 입력했어도 출력시 한줄로 나온다 -->
				<td>
					<%
						if(dto.getContent()==null){%>
							<h1 style="color:red;">저장된 내용 없음!</h1>
						<%}else{%>
						<!-- 엔터 없이 길게 썻을 경우 500px안에서 자동 줄넘김 -->
<!-- 						<div style="white-space:pre-wrap;word-wrap:break-word;width: 500px;"> -->
							<%=dto.getContent()%>
						<%}
					%>
				</td>
			</tr>
			<tr align="center">
				<td colspan="4">
				<button type="button" class="btn btn-outline-primary"
				onclick="location.href='smartform.jsp'" style="float:left;"><i class="bi bi-pencil"></i>&nbsp;글쓰기</button>
				<button type="button" class="btn btn-outline-success"
				onclick="location.href='smartlist.jsp?currentPage=<%=currentPage%>'"><i class="bi bi-card-text"></i>&nbsp;목록가기</button>
				<button type="button" class="btn btn-outline-warning"
				onclick="location.href='updateform.jsp?num=<%=num%>&currentPage=<%=currentPage%>'">
				<i class="bi bi-pencil-square"></i>&nbsp;수정하기</button>
				<button type="button" class="btn btn-outline-danger"
				onclick="funcdel(<%=num%>,<%=currentPage%>)"><i class="bi bi-trash-fill"></i>&nbsp;삭제하기</button>
				</td>
			</tr>
	</table>

</div>
<script type="text/javascript">
	function funcdel(num,currentPage){
// 		alert(num+","+currentPage);
		var a=confirm("삭제하려면 [확인]을 눌러주세요");
		if(a){
			location.href="deleteaction.jsp?num="+num+"&currentPage="+currentPage;
			
		}
	}
</script>
</body>
</html>













