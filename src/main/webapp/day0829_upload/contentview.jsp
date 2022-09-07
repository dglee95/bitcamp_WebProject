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
 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


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
.btn-neon-blue{color:#387df2;outline:2px solid #387df2;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-blue:hover{background:#387df2;color:#fff;box-shadow: 0 0 5px #387df2, 0 0 25px #387df2, 0 0 50px #387df2, 0 0 100px #387df2;transform:scale(1.1);}
	.btn-neon-blue.focus,.btn-neon-blue:focus{color:#387df2;background-color:#fff;border-color:#387df2;box-shadow:0 0 0 .2rem #387df2}
	.btn-neon-blue.disabled,.btn-neon-blue:disabled{color:#fff;background-color:#387df2;border-color:#387df2}
	.btn-neon-blue:not(:disabled):not(.disabled).active,.btn-neon-blue:not(:disabled):not(.disabled):active,.show>.btn-neon-blue.dropdown-toggle{color:#fff;background-color:#387df2;border-color:#387df2}
	.btn-neon-blue:not(:disabled):not(.disabled).active:focus,.btn-neon-blue:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-blue.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #387df2}
	
	.btn-neon-purple{color:#9560F7;outline:2px solid #9560F7;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-purple:hover{background:#9560F7;color:#fff;box-shadow: 0 0 5px #9560F7, 0 0 25px #9560F7, 0 0 50px #9560F7, 0 0 100px #9560F7;transform:scale(1.2);}
	/* .btn-neon-purple.focus,.btn-neon-purple:focus{color:#fff;background-color:#9560F7;border-color:#9560F7;box-shadow:0 0 0 .2rem #9560F7} */
	.btn-neon-purple.disabled,.btn-neon-purple:disabled{color:#fff;background-color:#9560F7;border-color:#9560F7}
	.btn-neon-purple:not(:disabled):not(.disabled).active,.btn-neon-purple:not(:disabled):not(.disabled):active,.show>.btn-neon-purple.dropdown-toggle{color:#fff;background-color:#9560F7;border-color:#9560F7}
	.btn-neon-purple:not(:disabled):not(.disabled).active:focus,.btn-neon-purple:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-purple.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #9560F7}
	.btn-neon-red{color:#ff0053;outline:2px solid #ff0053;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-red:hover{background:#ff0053;color:#fff;box-shadow: 0 0 5px #ff0053, 0 0 25px #ff0053, 0 0 50px #ff0053, 0 0 100px #ff0053;}
	/* .btn-neon-red.focus,.btn-neon-red:focus{color:#fff;background-color:#ff0053;border-color:#ff0053;box-shadow:0 0 0 .2rem #ff0053} */
	.btn-neon-red.disabled,.btn-neon-red:disabled{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active,.btn-neon-red:not(:disabled):not(.disabled):active,.show>.btn-neon-red.dropdown-toggle{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active:focus,.btn-neon-red:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-red.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #ff0053}
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
		
		
		 $( "#dialog" ).dialog({
		      autoOpen: false,
		      show: {
		        effect: "blind",
		        duration: 100
		      },
		      hide: {
		        effect: "explode",
		        duration: 100
		      }
		    });
		 
		    $(document).on("click",".amod", function() {
		    	idx=$(this).attr("idx");
		    	$.ajax({
		    		type:"get",
		    		url:"jsonupdateform.jsp",
		    		dataType:"json",
		    		data:{"idx":idx},
		    		success:function(res){	
		    			$("#unickname").val(res.nickname);
		    			$("#ucontent").val(res.content);
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
		      $( "#dialog" ).dialog( "open" );
		    });
		    
		    //댓글수정
		    $(document).on("click","#btnaupdate",function(){
		    	var nickname=$("#unickname").val();
		    	var content=$("#ucontent").val();
		    	$.ajax({
		    		type:"get",
		    		url:"updateanswer.jsp",
		    		dataType:"html",
		    		data:{"idx":idx,"nickname":nickname,"content":content},
		    		success:function(res){
		    			 $( "#dialog" ).dialog( "close" );
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
	});//$(function) close
	
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
					s+="<button type='button' idx="+item.idx+" class='btn btn-neon-blue adel'>삭제</button>";
					s+="<button type='button' idx="+item.idx+" class='btn btn-neon-purple amod'>수정</button>";
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
<div id="dialog" title="댓글 수정">
	<b>닉네임:</b>
	<input type="text" id="unickname" style="width:100px;">
	<br>
	<b>댓글내용:</b>
	<input type="text" id="ucontent" style="width:150px;">
	<button type="button" id="btnaupdate" class="btn btn-neon-red">댓글 수정</button>
</div>


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
					<div class="alist" id="alist">
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













