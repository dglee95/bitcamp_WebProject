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
   div.box{
   	border: 6px solid orange;
   	margin-left:200px;
   	margin-bottom:10px;
   	padding:10px 10px;
   	width: 200px;
   	display:block;
   }
</style>

</head>
<body>
<img alt="" src="../image/02.png"><br>
<button type="button" class="btn btn-outline-info" id="btn1">data5.xml읽기</button>
<button type="button" class="btn btn-outline-info" id="btn2">data6.json읽기</button>
<br><br>
<div id="result">111</div>

<script type="text/javascript">
	 $("#btn1").click(function(){
	      $("#result").empty();
	      
	      var s="";
	      //xml읽기(ajax 함수)
	      $.ajax({
	         type:"get",
	         url:"data5.xml",
	         dataType:"json",
	         success:function(data){
	           $.each($(data).find("guest"),function(idx,ele){
	        	  var n=$(ele).find("photo").text();
	        	  var q=n.substr(n.lastIndexOf("/")+1, n.length);
	        	  s+="<div class='box'>";
	        	  s+="날짜 : "+$(ele).find("date").text()+"<br>"; 
	        	  s+="메세지 : "+$(ele).find("message").text()+"<br>"; 
	        	  s+="<img src='"+$(ele).find("photo").text()+"' style='width:"+$(ele).find("photo").attr("width")+"px;'><br>";
	        	  s+="파일명 : "+q+"<br>";
	        	  s+="width : "+$(ele).find("photo").attr("width")+"px<br>";
	        	  s+="</div>";
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
	   
	   $("#btn2").click(function(){
	      $("#result").empty();
	      
	      var s="";
	    //json읽기(ajax 함수)
	      $.ajax({
	         type:"get",
	         url:"data6.json",
	         dataType:"json",
	         success:function(data){
	         	$.each(data,function(idx,ele){
	         		s+="<div class='box'>";
	         		s+="<img src='"+ele.photo+"' style='width:80px;'><br>"
	         		s+="이름 : "+ele.name+"<br>";
	         		var n="";
	         		var sum=0;
	         		$.each(ele.score,function(idxx,elee){
	         			n++;
	         			s+=(idxx+1)+"&nbsp;:&emsp;"+elee+"점<br>";
	         			sum+=Number(elee);
	         		});
	         		s+="총 "+n+"과목  총점 : "+sum+"<br>";
	         		s+="총점은 "+sum+"점 입니다<br>";
	         		s+="나이 : "+ele.age+"<br>";
	         		s+="</div>"
	         		
	         		
	         	});
	         	$("#result").append(s);
	         },
	         statusCode:{
	            404:function(){
	               alert("json 파일을 찾을 수 없어요!");
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