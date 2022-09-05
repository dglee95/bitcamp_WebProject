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
	
	div.item{
		width:800px;
		height:210px;
		border-bottom:2px solid gray;
		margin-bottom:20px;
	}
	
	div.item img.mainphoto{
		width:200px;
		height:200px;
		border:1px solid gray;
	}
	
	ul.itemlist{
		display:flex;
		padding-bottom:80px;
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
	
	b.content{
		cursor:pointer;
	}
	
	span.view{
		line-height: 1.5;/*행 높이, 줄간격*/
        color: black;
        width: fit-content;
        background-color: #f90;
        border: 2px solid white;
        padding: 10px;
        font-size: 12px;
        border-radius: 30px;
        
        position: absolute;
        opacity: 0.8;
        display: none; /*공간 차지 안함*/
	}
	
</style>

</head>
<body>
<button type="button" class="btn btn-outline-danger" id="btn1">Json 스마트게시판 #1</button>
<button type="button" class="btn btn-outline-danger" id="btn2">Json 스마트게시판 #2</button>
<div style="margin-top:30px;width:800px;margin-left:100px;" class="list">
111
</div>
<script type="text/javascript">
$("#btn1").click(function(){
	var s="";
	$.ajax({
		
        type:"get",
        url:"jsonsmartbbs.jsp",
        dataType:"json",
        success:function(data){
        	
           	$.each(data,function(idx,ele){
           		
	          	s+="<div class='item'>";
	          s+="<img class='mainphoto' src='../save/"+ele.mainphoto+"' align=right>";
        	  s+="<h5><b>"+ele.subject+"</b></h5>";
        	  s+="작성자:"+ele.writer+"<br>";
        	  s+="작성일:"+ele.writeday+"&emsp;조회:"+ele.readcount+"<br>";
        	  s+="<b class='content'>내용보기</b><br>";
        	  s+="<span class='view'>"+ele.content+"</span>";
	          s+="</div>";
        	  
           });
           
           
           $("div.list").html(s);
            
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
	
	$("#btn2").click(function(){
		 var s="";
	      s+="<ul class='itemlist'>";
	      //xml읽기(ajax 함수)
	      $.ajax({
	         type:"get",
	         url:"jsonsmartbbs.jsp",
	         dataType:"json",
	         success:function(data){
	        	 $.each(data,function(idx,e){
	        		 s+="<li>";
	        		 s+="<img src='../save/"+e.mainphoto+"'><br>";
	        		 s+="<span style='text-overflow:ellipsis;overflow: hidden;word-wrap:break-word;display: -webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;height:3em;'>";
	        		 s+=e.subject+"</span><br>";
	        		 s+="작성자 : "+e.writer+"<br>";
	        		 s+="작성일 : "+e.writeday+"<br>";
	        		 s+="<b class='content'>내용보기</b><br>";
		        	 s+="<a href='#' data-bs-toggle='tooltip' data-bs-placement='top' title='Hooray!'>내용..</a>";
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
    	  $(document).on("mouseover","b.content",function(){
    		  $(this).next().next().fadeIn();
    	  });
    	  
    	  $(document).on("mouseout","b.content",function(){
    		  $(this).next().next().fadeOut();
    	  });
    	  $(document).on("mousemove","b.content",function(e){
    		  $(this).next().next().css({
    			  left:e.pageX+"px",
    			  top:e.pageY+"px"
    		  });
    	  });
    	  
    
         
         
</script>
</body>
</html>















