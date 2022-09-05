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
	
	div.buttons{
		width:800px;
		float:left;
		margin-top:30px;
		margin-left:50px;
	}
	
	div.list{
		position:absolute;
		top:120px;
		left:50px;
		width:800px;
		font-size:20px;
		float:left;
	}
	
	div.scolor{
		width:50px;
		height:50px;
		border:1px solid gray;
		border-radius:100px;
	}
	
	img.photo{
		width:130px;
		border:2px groove gray;
	}
	
	ul.itemlist{
		display:flex;
	}
	
	ul.itemlist li{
		list-style:none;
		width:250px;
		height:320px;
		text-align:center;
	}
	
	ul.itemlist li img{
		width:200px;
		height:250px;
		border:1px solid black;
	}
</style>

</head>
<body>
<div class="buttons">
	<button type="button" class="btn btn-warning" id="btn1">MyShop-XML#1</button>
	<button type="button" class="btn btn-warning" id="btn2">MyShop-XML#2</button>
</div>
<div class="list">
1111111111
</div>

<script type="text/javascript">
	$("#btn1").click(function(){
	      var s="";
	      //xml읽기(ajax 함수)
	      $.ajax({
	         type:"get",
	         url:"xmlmyshop.jsp",
	         dataType:"xml",
	         success:function(data){
	        	 s+="<table class='table table-bordered'>";
	        	 s+="<tr class='table-primary' style='text-align:center;'>";
	        	 s+="<th width='150'>상품사진</th>";
	        	 s+="<th width='170'>상품명</th>";
	        	 s+="<th width='70'>색상</th>";
	        	 s+="<th width='100'>가격</th>";
	        	 s+="<th width='150'>입고일</th>";
	        	 s+="<th width='200'>작성일</th>";
	        	 s+="</tr>";
	        	 
	        	 //반복문
	        	 $(data).find("myshop").each(function(idx,item){
	        		 //사진
	        		 s+="<tr valign=middle>";
	        		 s+="<td align=center>";
	        		 s+="<img class='photo img-thumbnail' src='"+$(item).find("photo").text()+"'>";
	        		 s+="</td>";
	        		 
	        		 //상품명
	        		 s+="<td align=center>";
	        		 s+=$(item).find("sangpum").text();
	        		 s+="</td>";
	        		 
	        		 //색상
	        		 s+="<td align=center>";
	        		 s+="<div class='scolor' style='background-color:"+$(item).find("color").text()+";'></div>";
	        		 s+="</td>";
	        		 
	        		 //가격
	        		 s+="<td align=right>";
	        		 s+=$(item).find("price").text();
	        		 s+="</td>";
	        		 
	        		 //입고일
	        		 s+="<td align=center>";
	        		 s+=$(item).find("ipgoday").text();
	        		 s+="</td>";
	        		 
	        		 //작성일
	        		 s+="<td align=center>";
	        		 s+=$(item).find("writeday").text();
	        		 s+="</td>";
	        		 s+="</tr>";
	        	 });
	        	s+="</table>";
	        	console.log(s);
	         	$("div.list").html(s);
	            
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
	      var s="";
	      s+="<ul class='itemlist'>";
	      //xml읽기(ajax 함수)
	      $.ajax({
	         type:"get",
	         url:"xmlmyshop.jsp",
	         dataType:"xml",
	         success:function(data){
	        	 $(data).find("myshop").each(function(idx,item){
	        		 var e=$(item);
	        		 s+="<li>";
	        		 s+="<img src='"+e.find("photo").text()+"'><br>";
	        		 s+="상품명 : "+e.find("sangpum").text()+"<br>";
	        		 s+="가격 : "+e.find("price").text();
	        		 s+="</li>";
	        		 
	        		 if((idx+1)%3==0){
	        			 s+="</ul><ul class='itemlist'>";
	        		 }
	        		 

	        	 });
	        	 
	        	 s+="</ul>";
	         	$("div.list").html(s);
	            
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













