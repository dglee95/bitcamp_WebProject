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
</style>

</head>
<body>
	<div style="margin:50px 50px;">
		<button type="button" class="btn btn-outline-info" id="btn1">munje1.xml 가져오기</button>
		<button type="button" class="btn btn-outline-info" id="btn2">munje2.json 가져오기</button>
	</div>
	<div style="position:relative;top:20px;left:50px;"id="result">222</div>
<script type="text/javascript">
	$("#btn1").click(function(){
// 		$("#result").empty(); append 쓸 때만 empty, html 쓸거면 안써도 됨
		
		var s="";
		$.ajax({
	         type:"get",
	         url:"munje1.xml",
	         dataType:"xml",
	         success:function(data){
	        	 $(data).find("sawon").each(function(idx,ele){
	        		s+="Idx : "+idx+"<br>";
	        		s+="Sawon:"+$(ele).attr("no")+"번<br>";
	 	            s+="Buseo:"+$(ele).find("buseo").text()+"<br>";
	 	            s+="Sudang:"+$(ele).find("pay").attr("sudang")+"<br>";
	 	            s+="Pay:"+$(ele).find("pay").text()+"<br>";
	 	            s+="----------------------<br>";
	        		 
	        	 });
	            $("#result").html(s);
	         },
	         statusCode:{
	            404:function(){
	               alert("xml 파일을 찾을 수 없어요!");
	            },
	            500:function(){
	               alert("서버 오류..코드를 다시 한 번 보세요!");
	            }
	         }
	      });
	});
	
	$("#btn2").click(function(){
		$("#result").empty();
		
		var s="";
		$.ajax({
	         type:"get",
	         url:"munje2.json",
	         dataType:"json",
	         success:function(data){
	        	 $.each(data,function(idx,ele){
	        		 s+="idx : "+idx+"<br>";
	        		 s+="Name : "+ele.name+"<br>";
	        		 var n="";
	        		 $.each(ele.hobby,function(idxx,el){
	        			n+="["+el+"]";
	        		 });
	        		 s+="Hobby : "+(ele.hobby==null?"취미 없음":n)+"<br>";
	        		 s+="Addr : "+ele.addr+"<br>";
	        		 s+="HP : "+(ele.hp==null?"핸드폰 없음":ele.hp)+"<br>";
	        		 s+="------------------------<br>"
	        		 
	        	 });
	        	 $("#result").append(s);
	         },
	         statusCode:{
	            404:function(){
	               alert("xml 파일을 찾을 수 없어요!");
	            },
	            500:function(){
	               alert("서버 오류..코드를 다시 한 번 보세요!");
	            }
	         }
	      });
	});
</script>
</body>
</html>