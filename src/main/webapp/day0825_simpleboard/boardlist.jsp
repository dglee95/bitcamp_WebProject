<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SimpleBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Refresh" content="10;url=boardlist.jsp">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	* {
		font-family: 'Jua';
	}
	
	a:link, a:visited {
		text-decoration:none;
		color:black;
	}
	a:hover {
		text-decoration:underline;
		color:#0a58ca;
		font-weight:bold;
	}
</style>

</head>
<%
	request.setCharacterEncoding("utf-8");
	//dao 선언
	SimpleBoardDao dao = new SimpleBoardDao();
	
	//페이징 처리에 필요한 변수들	
	//전체 갯수
	int totalCount = dao.getTotalCount();
	int perPage=5;//한 페이지당 보여질 글의 갯수(일반적으론 10개)
	int perBlock=5;//한 페이지당 보여질 블럭의 갯수(일반적으론 10개)
	int startNum;//db에서 가져올 글의 시작번호(mysql은 첫글이 0번,오라클은 1번)
	//endNum은 오라클만 필요
	int startPage;//각 블럭당 보여질 시작 페이지
	int endPage;//각 블럭당 보여질 끝 페이지
	int currentPage;//현재 페이지
	int totalPage;//총 페이지 수
	int no;//각 페이지당 출력할 시작번호
	
	//현재 페이지를 읽는다. 단,null일 경우는 1페이지로 준다
	if(request.getParameter("currentPage")==null)
		currentPage=1;
	else
		//계산을 해야하므로 int로 변환
		currentPage=Integer.parseInt(request.getParameter("currentPage"));
	
	//총 페이지수를 구한다
	//총 글의 갯수/한 페이지당 보여질 갯수로 나눔(7/5=1)
	//나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
	totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
	
	//각 블럭당 보여질 시작페이지
	//perBlock=5일 경우 현재 페이지가 1~5일 경우는 시작페이지가 1, 끝페이지가 5
	//만약 현재페이지가 13일 경우는 시작페이지가 11,15
	startPage=(currentPage-1)/perBlock*perBlock+1;
	endPage=startPage+perBlock-1;
	//총 페이지수가 23개일 경우 마지막 블럭은 끝페이지가 25가 아닌 23이라야 한다
	if(endPage>totalPage)
		endPage=totalPage;
	
	//각 페이지에서 보여질 시작번호
	//예:1페이지->0,2페이지->5,3페이지->10
	startNum=(currentPage-1)*perPage;//오라클은 여기서 +1
	
	//각 페이지당 출력할 시작번호 구하기
	//예:총 글개수가 23이라면 1페이지는 23, 2페이지는 18, 3페이지는 13
	no=totalCount-(currentPage-1)*perPage;
	
	//페이지에서 보여질 글만 가져오기
	//전체 데이터
	List<SimpleBoardDto> list = dao.getPagingList(startNum, perPage);
%>
<script type="text/javascript">
	function post(){
		$("#form").submit();
	}
</script>
<body>

	<div style="margin: 30px 30px; width: 750px;">
		<button type="button" class="btn btn-outline-info btn-lg"
			onclick="location.href='boardform.jsp'"
			style="width: 120px; margin-left: 630px; position:relative;top:45px;">
			<i class="bi bi-pencil-fill"></i> 글쓰기
		</button>

		<br>
		<h6><b>총 <%=totalCount%>개의 게시글이 있습니다</b></h6>
		<table class="table table-bordered">
			<caption align="top"><h5><b><i class="bi bi-card-list"></i>&nbsp;간단 게시판</b></h5></caption>
			<tr class="table-secondary" align="center">
				<th width="50">번호</th>
				<th width="400">제목</th>
				<th width="100">작성자</th>
				<th width="150">작성일</th>
				<th>조회</th>
			</tr>
			<%
			if(totalCount==0){%>
				<tr height="40">
					<td colspan="5" align="center">
						<h6><b>등록된 게시글이 없습니다</b></h6>
					</td>
				</tr>
			<%}else{
				for(int i=0;i<list.size();i++){
					SimpleBoardDto dto=list.get(i);
					SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd.");
					%>
					<tr height="40">
						<td align="center"><%=no--%></td>
						<form action="contentview.jsp" method="post" id="form">
							<input type="hidden" name="num" value="<%=dto.getNum()%>">
							<td align="left"><a href="#"
								onclick="return post()"> <%=dto.getSubject()%>
							</a></td>
						</form>
						<td align="center"><%=dto.getWriter()%></td>
						<td align="center"><%=sdf.format(dto.getWriteday())%></td>
						<td align="center"><%=dto.getReadcount()%></td>
					</tr>
			<%
			}
			}
			%>
							
			
			
		</table>
		
		<!-- 페이지 번호 출력 -->
		<div style="width:750px;text-align:center;">
		<%
		if(startPage!=1){%>
			<a href="boardlist.jsp?currentPage=<%=startPage-1%>" style="color:black;">이전</a>
			&nbsp;
		<%}else{
			for(int pp=startPage;pp<=endPage;pp++)
			{
			
				if(pp==currentPage)//현재 페이지와 같은 경우 약간의 css 추가
				{%>
					
					<a href="boardlist.jsp?currentPage=<%=pp%>" 
					style="color:red;border:1px solid gray"><%=pp%></a>
					&nbsp;	
					
				<%}else{ %>
					<a href="boardlist.jsp?currentPage=<%=pp%>" 
					style="color:black;"><%=pp%></a>
					&nbsp;
					
				<%}%>
				
			<%}
		//다음
		if(endPage<totalPage){%>
			<a href="boardlist.jsp?currentPage=<%=endPage+1%>" style="color:black;">다음</a>
		<%} 
		}%>

		
		
		
		</div>		
		
		
		
	</div>
</body>
</html>













