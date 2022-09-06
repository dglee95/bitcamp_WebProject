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
	
	div.alist{
		margin-left:20px;
	}
	
	div.alist span.aday{
		float:right;
		font-size: 0.8em;
		color: #bbb;
	
	}

</style>
<script>
	$(function(){
		//처음 시작 시 호출
		list();
		
		$(document).on("click",".adel",function(){
			var a=confirm("선택한 댓글을 삭제하시겠습니까?");
			var idx=$(this).attr("idx");
			if(a){
				$.ajax({
					type:"get",
					url:"deleteanswer.jsp",
					dataType:"html",
					data:{"idx":idx},
					success:function(res){
						list();
					},
					statusCode: {
						404:function(){
							alert("json 파일을 찾을수 없어요!");
						},
						500:function(){
							alert("서버 오류..코드를 다시 한번 보세요!");
						}
					}
				});
			}
		});
	});
	
	function list(){
		//댓글 출력
		console.log("list num="+$("#num").val());
		var s="";
		$.ajax({
			type:"get",
			url:"listanswer.jsp",
			dataType:"json",
			data:{"num":$("#num").val()},
			success:function(res){
				$("b.acount>span").text(res.length);
				$.each(res,function(idx,item){
					s+="<div>"+item.nickname+"&nbsp;:&nbsp;"+item.content;
					s+="<span class='aday'>"+item.writeday+"</span>";
					s+="<button type='button' idx="+item.idx+" class='adel'>삭제</button>";
					s+="</div>";
				});
				$("div.alist").html(s);
			},
			statusCode: {
				404:function(){
					alert("json 파일을 찾을수 없어요!");
				},
				500:function(){
					alert("서버 오류..코드를 다시 한번 보세요!");
				}
			}
		})
		
	}
</script>


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
<input type="hidden" id="num" value="<%=num%>">

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
			<tr>
				<td>
					<b class="acount">댓글 <span>0</span></b>
					<div class="alist">
						댓글목록
					</div>
					<div class="aform input-group">
						<input type="text" id="nickname" class="form-control form-control-sm" 
						style="width:100px;" placeholder="닉네임">
					
						<input type="text" id="content" class="form-control form-control-sm" 
						style="width:300px;" placeholder="댓글 메세지">
						
						<button type="button" id="btnasend" class="btn btn-info btn-sm">저장</button>
					</div>
					<br>
					
				</td>
			</tr>
			<script>
				//댓글부분 ajax insert code
				var num=$("#num").val();
				console.log(num);
				
				$("#btnasend").click(function(){
					var nickname=$("#nickname").val().trim();
					var content=$("#content").val().trim();
					if(nickname==''){
						alert("닉네임을 입력 후 저장해주세요");
						return;
					}
					if(content==''){
						alert("내용을 입력 후 저장해주세요");
						return;							
					}
					
					$.ajax({
						type:"get",
						url:"insertanswer.jsp",
						dataType:"html",
						data:{"num":num,"nickname":nickname,"content":content},
						success:function(res){
							//기존 입력값 지우기
							$("#nickname").val('');
							$("#content").val('');
							//댓글 추가 후 댓글목록 다시 출력
							list();
						},
						statusCode: {
							404:function(){
								alert("json 파일을 찾을수 없어요!");
							},
							500:function(){
								alert("서버 오류..코드를 다시 한번 보세요!");
							}
						}
					})
				});
			</script>
			
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













