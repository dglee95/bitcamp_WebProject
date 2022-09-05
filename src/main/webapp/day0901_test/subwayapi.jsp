<%@page import="data.dto.SubwayDto"%>
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
	div.container{
		margin: 5% 5%;
	}
	
	div#result{
		
	}
	.btn-neon-green{color:#36eb40;outline:2px solid #36eb40;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-green:hover{background:#36eb40;color:#fff;box-shadow: 0 0 5px #36eb40, 0 0 25px #36eb40, 0 0 50px #36eb40, 0 0 100px #36eb40;}
	/* .btn-neon-green.focus,.btn-neon-green:focus{color:#fff;background-color:#36eb40;border-color:#36eb40;box-shadow:0 0 0 .2rem #36eb40} */
	.btn-neon-green.disabled,.btn-neon-green:disabled{color:#fff;background-color:#36eb40;border-color:#36eb40}
	.btn-neon-green:not(:disabled):not(.disabled).active,.btn-neon-green:not(:disabled):not(.disabled):active,.show>.btn-neon-green.dropdown-toggle{color:#fff;background-color:#36eb40;border-color:#36eb40}
	.btn-neon-green:not(:disabled):not(.disabled).active:focus,.btn-neon-green:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-green.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #36eb40}
	.btn-neon-red{color:#ff0053;outline:2px solid #ff0053;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-red:hover{background:#ff0053;color:#fff;box-shadow: 0 0 5px #ff0053, 0 0 25px #ff0053, 0 0 50px #ff0053, 0 0 100px #ff0053;}
	/* .btn-neon-red.focus,.btn-neon-red:focus{color:#fff;background-color:#ff0053;border-color:#ff0053;box-shadow:0 0 0 .2rem #ff0053} */
	.btn-neon-red.disabled,.btn-neon-red:disabled{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active,.btn-neon-red:not(:disabled):not(.disabled):active,.show>.btn-neon-red.dropdown-toggle{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active:focus,.btn-neon-red:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-red.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #ff0053}
	
</style>

</head>
<body>
<%
	String url="seoulsubway.json";
%>
<div class="container">
	<button type="button" id="btn1" class="btn btn-neon-green loc">추가하기</button>
	<button type="button" id="btn2" class="btn btn-neon-red loc" onclick="location.href='subwaymain.jsp'">메인으로</button>
	<br><br>
	<div>업로드할 파일 명&nbsp;&nbsp;:&nbsp;&nbsp;<%=url%></div>
	<br><br>
	<div id="result" style="font-size:20px;">추가하기 버튼을 클릭하세요</div>
	<script type="text/javascript">
	$("#btn1").click(function(){
	      $("#result").empty();
	      var s="";
	      $.ajax({
	         type:"get",
	         url:"<%=url%>",
	         dataType:"json",
	         success:function(data){
	        	 $.each(data,function(idx,ele){
	        		 $.ajax({
	        			 type:"get",
	    		         url:"addsubwayapi.jsp",
	    		         dataType:"html",
	    		         data:{"oaddr":ele.지번주소,"naddr":ele.도로명주소,"line":ele.선명,"station":ele.역명,"manager":ele.철도운영기관명},
	    		         success:function(res){
	    		        	 $("#result").html("<h1>데이터 추가 완료!!</h1>");
	    		         },
	    		         statusCode:{
	    		            404:function(){alert("json 파일을 찾을 수 없어요!");},
	    		            500:function(){alert("서버 오류..코드를 다시 한 번 보세요!");}
	    		         }
	        		 });
	         	});
	         },
	         statusCode:{
	            404:function(){alert("json 파일을 찾을 수 없어요!");},
	            500:function(){alert("서버 오류..코드를 다시 한 번 보세요!");}
	         }
	      });
	});
	</script>
</div>
</body>
</html>