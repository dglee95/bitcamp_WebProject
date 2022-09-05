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
		$("#result").empty();
		
		var s="";
		var i=0;
		$.ajax({
	         type:"get",
	         url:"rss.xml",
	         dataType:"xml",
	         success:function(data){
	        	 $(data).find("data").each(function(idx,ele){
	        		console.log($(ele).siblings("city").text()=="서울");
	        		while($(ele).siblings("city").text()=="서울"){
	        		s+="횟수 : "+idx+"<br>";
	        		s+="지역 : "+$(ele).siblings("city").text()+"<br>";
	        		s+="날짜 : "+$(ele).find("tmEf").text()+"<br>";
	        		s+="날씨 : "+$(ele).find("wf").text()+"<br>";
	        		s+="최저기온 : "+$(ele).find("tmn").text()+"<sup>o</sup>C<br>";
	        		s+="최고기온 : "+$(ele).find("tmx").text()+"<sup>o</sup>C<br>";
	        		s+="강수확률 : "+$(ele).find("rnSt").text()+"%<br><br>";
	        		}
	        		$("#result").append(s);
	        	 });
	        	 
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