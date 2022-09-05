<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link
        href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
        rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	body *{
		 font-family: 'Jua';
	}
	
	div.item{	
		height: 180px;	
		width: 800px;
		border-bottom: 2px solid gray;
		margin-bottom: 20px;	
	}
	
	div.item img.mainphoto{
		float:left;
		width: 130px;
		height: 150px;
		border: 1px solid gray;
		margin-right: 20px;
	}
	
	ul.itemlist{
		display: flex;
	}
	
	ul.itemlist li{
		list-style: none;
		width: 320px;
		height:350px;
		text-align: center;		
	}
	
	ul.itemlist li img{
		width: 200px;
		height: 250px;
		border: 1px solid black;
	}
	
	span.day{
		color: #bbb;
		font-size: 14px;
	}
	
	b.content{
		cursor: pointer;
	}
	
	span.view{
		display: none;
	}
	
	div.mytooltip img{
		width: 300px;
	}
	
	div.mytooltip{
            line-height: 1.5;
            color: white;
            width: 400px;
            background-color: #f90;
            border: 2px solid white;
            padding: 10px;
            font-size: 12px;
            border-radius: 30px;

            position: absolute;
            opacity: 0.8;
            display: none;
       }	
</style>
<script type="text/javascript">
	$(function(){
		$(document).on("mouseover","b.content",function(e){
			$("div.mytooltip").fadeIn();
		});
		
		$(document).on("mouseout","b.content",function(e){
			$("div.mytooltip").fadeOut();
		});
		$(document).on("mousemove","b.content",function(e){
			 $("div.mytooltip").css({
                 left:e.pageX+"px",
                 top:e.pageY+"px",
                 color:'black'
             });

             //span.view 태그 안의 글자를 툴팁에 넣기(작은 이미지와 함께)
             var s="<b>"+$(this).next().next().html()+"</b>";

             $("div.mytooltip").html(s);
		});		
	});
</script>
</head>
<body>
<div class="mytooltip">
        Java<br>
        HTML5<br>
        CSS3<br>
        ES6<br>
        Oracle        
</div>
<button type="button" class="btn btn-outline-danger" id="btn1">Json 스마트게시판 #1</button>
<button type="button" class="btn btn-outline-danger" id="btn2">Json 스마트게시판 #2</button>
<div style="margin-top: 30px;width: 800px;margin-left: 100px;" class="list">
111
</div>

<script type="text/javascript">
	$("#btn1").click(function() {
		var s="";
		$.ajax({
			type:"get",
			url:"jsonsmartbbs.jsp",
			dataType:"json",
			success:function(data){	
				$.each(data,function(idx,ele){
					s+="<div class='item'>";
					s+="<img class='mainphoto' src='../save/"+ele.mainphoto+"'>";
					s+="<h5><b>"+ele.subject+"</b></h5>";
					s+="작성자:"+ele.writer+"<br>";
					s+="작성일:"+ele.writeday+"&nbsp;&nbsp;&nbsp;조회:"+ele.readcount+"<br>";
					s+="<b class='content'>내용보기</b><br>";
					s+="<span class='view'>"+ele.content+"</span>";
					s+="</div>";
				});			
				
				$("div.list").html(s);				
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
	});
	
	$("#btn2").click(function() {
		var s="";
		  s+="<ul class='itemlist'>";
		$.ajax({
			type:"get",
			url:"jsonsmartbbs.jsp",
			dataType:"json",
			success:function(data){	
				$.each(data,function(i,ele){
					s+="<li>";
					s+="<img src='../save/"+ele.mainphoto+"'>";
				
					s+="<p>"+ele.subject+"<br>";
					s+="작성자:"+ele.writer+"</p>";
					s+="<span class='day'>"+ele.writeday+"&nbsp;조회:"
						+ele.readcount+"</span><br>";
					
					
					s+="</li>";
					if((i+1)%3==0){
						s+="</ul><ul class='itemlist'>";
					}		
				});			
				s+="</ul>";
				$("div.list").html(s);	
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
	});
</script>
</body>
</html>
