<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.SubwayDao"%>
<%@page import="data.dto.SubwayDto"%>
<%@page import="data.dao.SubwayUserDao"%>
<%@page import="data.dto.SubwayUserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철</title>
<link rel="shortcut icon" href="#">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style type="text/css">
	*{
		font-family: 'Jua';
		font-size:24px;
	}
	body{
		background-color:#fef5ff;
	}
	table th{
		font-family: 'Hahmlet';
		font-size:20px;
		
	}
	table td,.oad{
		font-family: 'Hahmlet';
		font-size:0.8em;
	}
	
	
	div.leftmenu{
		position:absolute;
		left:2%;
		top:2%;
		background-color:#f0f0f0;
		border:1px solid lightgray;
		border-radius:10px;
		user-select:none;
		opacity:0.95;
		box-shadow:3px 3px 3px gray;
	}
	div.topbtn{
		align:center;
		font-size:20px;
	}
	div.cov{
		display:none;
		background-color:#ab87ed;
		
	}
	
	div.sc{
		font-size:16px;
		display:block;
		margin-top:5%;
		margin-left:18%;
		width:700px;
		opacity:0.9;
		animation-name: blink-effect;
		animation-duration: 0.1s;
		animation-timing-function: step-end;
		animation-iteration-count:1;
	}
	div.gu{
		width:150px;
		text-indent:13px;
		font-size:19px;
	}
	div.gu:hover{
		cursor:pointer;
		background-color:#d2bbfc;
		transform:scale(1.05);
	}
	div.gu:active,div.gu:focus{
		transform:scale(1.05);
	}
	div.tbdiv{
		width:545px;
		height:245px;
	}
	button.top{
		background-color:#F1F1F1;
		border:0px;
		width:140px;
		margin-top:15px;
		margin-left:5px;
		opacity:0.9;
	}
	
	b.a{
		text-decoration:underline;
		color:crimson;
	}
	
	span.oad{
		color:#b3b3b3;
	}
	
	i.loc{
		cursor:pointer;
		float:right;
		text-shadow:2px 2px 1px black;
	}
	i.loc:hover{
		transform:scale(1.3); 
	}
	i.foc{
		cursor:pointer;
	}
	i.updi,i.deli{
		cursor:pointer;
		float:right;
		color:crimson;
		display:none;
	}
	
	i.deli{
		margin-right:5px;
	}
	.btn-neon-blue{
		border-radius:10px;
	}
	div.marker{
		display:inline-block;
	 	text-align:center;
	 	padding:2px 2px;
	 	
	}
	
	#login{
		position:absolute;
		top:3%;
		right:10%;
		user-select:none;
		opacity:0.9;
	}
	
	#logout{
		position:absolute;
		top:3%;
		right:10%;
		user-select:none;
		opacity:0.9;
	}
	
	#loginbtn,#logoutbtn,#regbtn,#modbtn,#managebtn{
		font-size:20px;
		background-color:white;
		border:0px;
		border-radius:10px;
		
	}
	#loginbtn:hover,#regbtn:hover{
		background:#9560F7;
		color:#fff;
		box-shadow: 0 0 5px #9560F7, 0 0 25px #9560F7, 0 0 50px #9560F7, 0 0 100px #9560F7;
		
	}
	#logoutbtn:hover,#modbtn:hover,#managebtn:hover{
		background:#ff0053;
		color:#fff;
		box-shadow: 0 0 5px #ff0053, 0 0 25px #ff0053, 0 0 50px #ff0053, 0 0 100px #ff0053;
	}
	
	
	#map{
		position:absolute;
		right:1px;
		border-radius:30px;
		animation-name: blink-effect;
		animation-duration: 0.1s;
		animation-timing-function: step-end;
		animation-iteration-count:1;
		user-select:none;
		visibility:hidden;
		opacity:0.9;
		
	}
	#a1, #a2{
		background-color:#7733f5;
	}
	
	#addbtn,#updbtn,#delbtn{
		background-color:#F7E600;
	}
	#grant{
		display:none;
	}
	#where{
		text-align:center;
		width:80px;
	}
	#result{
		display:block;
		width:600px;
	}
	a:link,a:visited{
		text-decoration:none;
		color:black;
	}
	
	
	#main:hover,#spid:hover,#sppw:hover{
		cursor:pointer;
		background:#fff;
		color:#431d8a;
		text-shadow: 0 0 5px #9560F7, 0 0 25px #9560F7, 0 0 50px #9560F7, 0 0 75px #9560F7;
		transform:scale(1.2);
	}
	#a1:hover, #a2:hover, #a4:hover{
		cursor:pointer;
		background-color:#9560F7;
		transform:scale(1.05); 
	}
	#addbtn:hover,#updbtn:hover,#delbtn:hover{
		cursor:pointer;
		background-color:#FDC000;
		transform:scale(1.05);
	}

	@keyframes blink-effect {
  		50% {
    		opacity: 0;
  		}
	}
	
	.btn-neon-red{color:#ff0053;outline:2px solid #ff0053;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-red:hover{background:#ff0053;color:#fff;box-shadow: 0 0 5px #ff0053, 0 0 25px #ff0053, 0 0 50px #ff0053, 0 0 100px #ff0053;}
	/* .btn-neon-red.focus,.btn-neon-red:focus{color:#fff;background-color:#ff0053;border-color:#ff0053;box-shadow:0 0 0 .2rem #ff0053} */
	.btn-neon-red.disabled,.btn-neon-red:disabled{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active,.btn-neon-red:not(:disabled):not(.disabled):active,.show>.btn-neon-red.dropdown-toggle{color:#fff;background-color:#ff0053;border-color:#ff0053}
	.btn-neon-red:not(:disabled):not(.disabled).active:focus,.btn-neon-red:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-red.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #ff0053}
	
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
	
	.table-purple{--bs-table-bg:#9560F7;--bs-table-striped-bg:#c5e8ef;--bs-table-striped-color:#000;--bs-table-active-bg:#badce3;--bs-table-active-color:#000;--bs-table-hover-bg:#bfe2e9;--bs-table-hover-color:#000;color:#000;border-color:#badce3}
	.table{--bs-table-bg:transparent;--bs-table-accent-bg:transparent;--bs-table-striped-color:#212529;--bs-table-striped-bg:rgba(0, 0, 0, 0.05);--bs-table-active-color:#212529;--bs-table-active-bg:rgba(0, 0, 0, 0.1);--bs-table-hover-color:#212529;--bs-table-hover-bg:rgba(0, 0, 0, 0.075);width:100%;margin-bottom:1rem;color:#212529;vertical-align:top;
	border-color:#7936f5;border-collapse: collapse;border-style: hidden;box-shadow: 0 0 0 1px #000;}
	
	ul{position:relative;left:1px;margin-top:0;margin-bottom:1rem;padding-left:2rem}
	.pagination{display:flex;padding-left:0;list-style:none}
	.page-link{position:relative;display:block;color:#9560F7;text-decoration:none;background-color:#fff;border:1px solid #dee2e6;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}
	@media (prefers-reduced-motion:reduce){.page-link{transition:none}}
	.page-link:hover{z-index:2;color:#ab87ed;background-color:#ab87ed;border-color:#dee2e6}
	.page-link:focus{z-index:3;color:#ab87ed;background-color:#ab87ed;outline:0;box-shadow:0 0 0 .25rem rgba(13,110,253,.25)}
	.page-item:not(:first-child) .page-link{margin-left:-1px}
	.page-item.active .page-link{z-index:3;color:#fff;background-color:#9560F7;border-color:#9560F7}
	.page-item.disabled .page-link{color:#6c757d;pointer-events:none;background-color:#fff;border-color:#dee2e6}
	.page-link{padding:.375rem .75rem}
	.page-item:first-child .page-link{border-top-left-radius:.25rem;border-bottom-left-radius:.25rem}
	.page-item:last-child .page-link{border-top-right-radius:.25rem;border-bottom-right-radius:.25rem}
	.pagination-lg .page-link{padding:.75rem 1.5rem;font-size:1.25rem}
	.pagination-lg .page-item:first-child .page-link{border-top-left-radius:.3rem;border-bottom-left-radius:.3rem}
	.pagination-lg .page-item:last-child .page-link{border-top-right-radius:.3rem;border-bottom-right-radius:.3rem}
	.pagination-sm .page-link{padding:.25rem .5rem;font-size:.875rem}
	.pagination-sm .page-item:first-child .page-link{border-top-left-radius:.2rem;border-bottom-left-radius:.2rem}
	.pagination-sm .page-item:last-child .page-link{border-top-right-radius:.2rem;border-bottom-right-radius:.2rem}
</style>
<% 

	String loginok=(String)session.getAttribute("loginok");
	if(loginok==null)
	{%>
	<div id="login">
		<button type="button" class="btn-neon-purple" id="loginbtn" onclick="location.href='loginform.jsp'">로그인</button>
		<button type="button" class="btn-neon-purple" id="regbtn" onclick="location.href='register.jsp'">회원가입</button>
	</div>
	<%}else{
		String power=(String)session.getAttribute("power");
		String myid=(String)session.getAttribute("myid");
	%>
	<div id="logout">
		<%=power.equals("admin")?"<button type='button' class='btn-neon-red' id='managebtn'>관리</button>":""%>
		<b style="margin-bottom: 20px;"><%=power.equals("admin")?"[관리자]":"["+myid+"]님 로그인 중"%></b>
		<button type="button" class="btn-neon-red" id="logoutbtn" onclick="location.href='logoutaction.jsp'">로그아웃</button>
		<button type="button" class="btn-neon-red" id="modbtn" onclick="location.href='modify.jsp'">정보수정</button>
	</div>
	
	<%}

	SubwayDao dao=new SubwayDao();
	List<SubwayDto> list=dao.getAllSubway();

	request.setCharacterEncoding("utf-8");
	int totalCount = dao.getTotalCount();
	int perPage=10;//한 페이지당 보여질 글의 갯수(일반적으론 10개)
	int perBlock=10;//한 페이지당 보여질 블럭의 갯수(일반적으론 10개)
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
	List<SubwayDto> listp = dao.getPagingSubway(startNum, perPage);
	

	
	
%>

</head>
<script type="text/javascript">
	$(function(){
		$(document).on("click","#a1",function(){
			$("#a2").next("div.cov").slideUp("fast");
			$(this).next("div.cov").slideToggle("fast");
		});
		
		$(document).on("click","#a2",function(){
			$("#a1").next("div.cov").slideUp("fast");
			$(this).next("div.cov").slideToggle("fast");
		});
	
		$(document).on("click","#updbtn",function(){
			$(".deli").hide();
			$(".updi").fadeToggle();
			
		});
		
		$(document).on("click","#delbtn",function(){
			$(".updi").hide();
			$(".deli").fadeToggle();
			
		});
		
		$(document).on("click","#a4",function(){
			location.href="subwayapi.jsp"; 
		});
		
		$(document).on("click","i.foc",function(){
			$("#search").focus();
		});

		$(document).on("click",".top",function(){
			$( 'html, body' ).animate( { scrollTop : 0 }, 50 );
			return false;
		});
		
		$(document).on("click","#managebtn",function(){
			$("#grant").fadeToggle(300);
		});
	

		$(document).ready(function(){
			  var currentPosition = parseInt($(".leftmenu").css("top"));
			  var currentPositionm = parseInt($("#map").css("top"));
			  var currentPositionl = parseInt($("#login").css("top"));
			  var currentPositiono = parseInt($("#logout").css("top"));
			  $(window).scroll(function() {
			    var position = $(window).scrollTop(); 
			    $(".leftmenu").stop().animate({"top":position+currentPosition+"px"},200);
			    $("#map").stop().animate({"top":position+currentPositionm+36+"px"},200);
			    $("#login").stop().animate({"top":position+currentPositionl+"px"},200);
			    $("#logout").stop().animate({"top":position+currentPositiono+"px"},200);
			    
			  });
			});
		
		$(document).on("click","i.updi",function(){
			var no=$(this).attr("no");
			funcupd(no);
		});
		
		$(document).on("click","i.deli",function(){
			var no=$(this).attr("no");
			funcdel(no);
		});
		
		$(document).on("click", "div.gu", function() {
			$("div.addstation").hide();
			$("div.sc").hide();
			$("div.sc").show(1);
			$("#result").empty();
			var txt=$(this).text();
			func($(this).attr("adr"),txt.substr(2, txt.length));
			$( 'html, body' ).animate( { scrollTop : 0 }, 50 );
			return false;
		});
		;
		
		$(document).on("keyup","#search",function(e){
			if(e.keyCode==13){
				func($("#where").val(), $("#search").val().trim());//앞뒤공백 제거 후 보내기
			}
		});
		
		$(document).on("click","#searchbtn",function(){
			func($("#where").val(), $("#search").val().trim());
		});
		
		$(document).on("click","i.loc",function(){
			$("#map").css("visibility","visible")
		});
	});
	
	function func(where, search){
		var s="";
		$.ajax({
	         type:"get",
	         url:"searchsubway.jsp",
	         dataType:"json",
	         data:{"where":where,"search":search},
	         success:function(res){
	        	 if(res==""){
	        		 $("#result").html("<h1 style='color:red'>&emsp;<i class='fas fa-times' style='font-size:48px;color:red'></i>&emsp;검색 결과 없음&emsp;<i class='fas fa-times' style='font-size:48px;color:red'></i></h1>");
	        	 }else{
	        		 s+="<span class='chong'>총 "+res.length+"개 역이 등록되어 있습니다</span>";
		        	 $.each(res,function(idx,ele){
		        		s+="<div class='tbdiv'><table class='table table-bordered'>";
						s+="<tr style='margin-top:5px;' align='center' valign='middle'>";
						s+="<th class='table-purple' align='center' colspan='2' style='border-right:0px;outline-right:0px;'>"+ele.city+"&nbsp;";
						if(where=="line"){
							var s2=ele.line.replace(search,"<b class='a'>"+search+"</b>");
							s+=s2+"</th>";
						}else{
							s+=ele.line+"</th>";
						};
						s+="<td width='60' class='table-purple' style='border-left:0px;outline-left:0px;'><i class='far fa-edit hi updi' style='font-size:30px' no='"+ele.num+"'></i><i class='far fa-trash-alt hi deli' style='font-size:30px' no='"+ele.num+"'></i></td>";
						s+="</tr><tr align='center' valign='middle'>";
						s+="<th class='table-purple' width='130'>역명</th>";
						s+="<td align='left' style='border-right:0px;outline-right:0px;text-indent:70px;'>";
						if(where=="station"){
							var s1=ele.station.replace(search,"<b class='a'>"+search+"</b>");
							s+=s1+"</td>";
						}else{
							s+=ele.station+"</td>";
						};
						s+="<td style='border-left:0px;outline-left:0px;'><i class='fas fa-map-marker-alt loc' style='font-size:36px;color:red' sch='"+ele.naddr+"' pn='"+ele.station+"'></i></td>"
						s+="</tr><tr valign='middle' align='center'><th class='table-purple'>";
						s+="도로명주소</th>";
						s+="<td align='left' colspan='2'>";
						if(where=="naddr"){
							var s3=ele.naddr.replace(search,"<b class='a'>"+search+"</b>");
							s+=s3+"</td>";
						}else{
							s+=ele.naddr+"</td>";
						};
						s+="<tr align='center' valign='middle'><th class='table-purple'>지번 주소</th>";
						s+="<td align='left' colspan='2'><span class='oad'>"+ele.oaddr+"</span></td></tr>";
			        	s+="</table></div>";
		        	 });
		        	 $("#result").html(s);
	        	 }
	         },
	         statusCode:{
	            404:function(){alert("json 파일을 찾을 수 없어요!");},
	            500:function(){alert("서버 오류..코드를 다시 한 번 보세요!");},
	         }
	      });
	};
	
	function funcupd(num){
		var c=confirm("해당 역을 수정하려면 [확인]을 눌러주세요");
		if(c){
			location.href="updsubway.jsp?num="+num;
		}else{
			alert("수정 취소");
		}
	};
	
	function funcdel(num){
		var c=confirm("해당 역을 삭제하려면 [확인]을 눌러주세요");
		if(c){
			location.href="delaction.jsp?num="+num;
			alert("삭제되었습니다");
		}else{
			alert("삭제 취소");
		}
	};
</script>
<body>
<div class="sc" >

	<div class="input-group">
		<h4>
			<i class='fas fa-search foc' style='font-size:36px;margin-top:10px;'></i>
		</h4>&nbsp;&nbsp;
		<select id="where" style="width:150px;">
			<option value="naddr">도로명 주소</option>
			<option value="line">호선</option>
			<option value="station">역명</option>
		</select>&nbsp;
		<input type="text" class="form-control" id="search" placeholder="검색">&emsp;
		<button type="button" class="btn btn-neon-blue" id="searchbtn">검색</button>
	</div>
<div id="map" style="width:500px;height:500px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=161d79e1c463f185663c372123ec7671&libraries=services"></script>
<script>
	$(document).on("click","i.loc",function(){
			sch=$(this).attr("sch");
			pn=$(this).attr("pn");
			$("#map").css({
				right:(window.pageXOffset+1)*13+"%",
				top:window.pageYOffset+180+"px",
			});		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.499429, 127.029035), // 지도의 중심좌표
	        level: 4 // 지도의 확대 레벨
	    };  
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		var geocoder = new kakao.maps.services.Geocoder();
		geocoder.addressSearch(sch, function(result, status) {
	     if (status === kakao.maps.services.Status.OK) {
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	        var infowindow = new kakao.maps.InfoWindow({
	            content:'<div style="width:150px;text-align:center;padding:6px 0;">'+pn+'역</div>'
	        });
	        infowindow.open(map, marker);
	        map.setCenter(coords);
	    } 
	});
});
</script>
	<br><br>
		<div id="result">
			<%
		if(listp.size()==0){%>
			<h1 style='color:red'>
			&emsp;<i class='fas fa-times' style='font-size:48px;color:red'></i>&emsp;검색 결과 없음&emsp;<i class='fas fa-times' style='font-size:48px;color:red'></i>
			</h1>
		<%}else{%>
			<span class="chong">총 <%=dao.getTotalCount()%>개 역이 등록되어 있습니다</span>
			<%for(int i=0;i<listp.size();i++){
				SubwayDto dto=listp.get(i);
				%>
				<div class="tbdiv">
				<table class='table table-bordered'>
					<tr style='margin-top:5px;' align='center' valign='middle'>
						<th class='table-purple' align='center' colspan='2' style='border-right:0px;outline-right:0px;'><%=dto.getManager().substring(0, 2)%>&nbsp;<%=dto.getLine()%></th>
							<td width='60' class='table-purple'  style='border-left:0px;outline-left:0px;'>
							<i class='far fa-edit hi updi' style='font-size:30px' no='<%=dto.getNum()%>'></i>
							<i class='far fa-trash-alt hi deli' style='font-size:30px' no='<%=dto.getNum()%>'></i>
							</td>
						
					</tr>
					<tr align='center' valign='middle'>
					<th class='table-purple' width='130'>역명</th>
					<td align='left' style='border-right:0px;outline-right:0px;text-indent:70px;'><%=dto.getStation()%></td>
					<td style='border-left:0px;outline-left:0px;'><i class='fas fa-map-marker-alt loc' style='font-size:36px;color:red' sch="<%=dto.getNaddr()%>" pn="<%=dto.getStation()%>"></i></td>
					</tr>
					<tr valign='middle' align='center'>
						<th class='table-purple'>도로명주소</th>
						<td align='left' colspan='2'><%=dto.getNaddr()%></td>
					</tr>
					<tr align='center' valign='middle'>
						<th class='table-purple'>지번 주소</th>
						<td align='left' colspan='2'><span class='oad'><%=dto.getOaddr() %></span></td>
					</tr>
	        	</table>
	        	</div>
				
			<%}
		}
		%>
		<div style="width:750px;text-align:center;">
		<ul class="pagination">
		<%
		if(startPage!=1){%>
			<li class="page-item">
			<a class="page-link" 
			href="subwaymain.jsp?currentPage=<%=startPage-1%>" style="color:black;">이전</a>
			</li>
		<%}else{}
			for(int pp=startPage;pp<=endPage;pp++)
			{
			
				if(pp==currentPage)//현재 페이지와 같은 경우 약간의 css 추가
				{%>
					<li class="page-item active">
					<a href="subwaymain.jsp?currentPage=<%=pp%>" 
					 class="page-link" ><%=pp%></a>
					</li>	
					
				<%}else{ %>
					<li class="page-item">
					<a class="page-link" href="subwaymain.jsp?currentPage=<%=pp%>" 
					style="color:black;"><%=pp%></a>
					</li>
					
				<%}%>
				
			<%}
		//다음
			if(endPage<totalPage){%>
			<li class="page-item">
			<a class="page-link" 
			href="subwaymain.jsp?currentPage=<%=endPage+1%>" style="color:black;">다음</a>
			</li>
		<%} %>
		</ul>
		</div>	
		</div>
</div>
<div class="leftmenu" style="width:150px;">
	<div id="main" onclick="location.href='subwaymain.jsp'" align="center" style="padding-top:5px;"><h4 style="color:#00879E;"><i class="fas fa-subway" style="color:#00879E;font-size:34px;"></i>&nbsp;지하철</h4></div>
	<div id="a1" style="width:150px;" addr="naddr">&nbsp;<i class='far fa-map' style='font-size:24px'></i>&nbsp;서울</div>
	<div class="cov" style="width:150px;">
	<div class="gu" adr="naddr">- 종로구</div>
<!-- 	<div class="gu" adr="naddr">- 중구</div> -->
	<div class="gu" adr="naddr">- 용산구</div>
	<div class="gu" adr="naddr">- 성동구</div>
	<div class="gu" adr="naddr">- 광진구</div>
	<div class="gu" adr="naddr">- 동대문구</div>
	<div class="gu" adr="naddr">- 중랑구</div>
	<div class="gu" adr="naddr">- 성북구</div>
	<div class="gu" adr="naddr">- 강북구</div>
	<div class="gu" adr="naddr">- 도봉구</div>
	<div class="gu" adr="naddr">- 노원구</div>
	<div class="gu" adr="naddr">- 은평구</div>
	<div class="gu" adr="naddr">- 서대문구</div>
	<div class="gu" adr="naddr">- 마포구</div>
	<div class="gu" adr="naddr">- 양천구</div>
<!-- 	<div class="gu" adr="naddr">- 강서구</div> -->
	<div class="gu" adr="naddr">- 구로구</div>
	<div class="gu" adr="naddr">- 금천구</div>
	<div class="gu" adr="naddr">- 영등포구</div>
	<div class="gu" adr="naddr">- 동작구</div>
	<div class="gu" adr="naddr">- 관악구</div>
	<div class="gu" adr="naddr">- 서초구</div>
	<div class="gu" adr="naddr">- 강남구</div>
	<div class="gu" adr="naddr">- 송파구</div>
	<div class="gu" adr="naddr">- 강동구</div>
	</div>
	<div id="a2" style="width:150px;" addr="naddr">&nbsp;<i class='far fa-map' style='font-size:24px'></i>&nbsp;부산</div>
	<div class="cov" style="width:150px;">
	<div class="gu" adr="naddr">- 중구</div>
	<div class="gu" adr="naddr">- 서구</div>
	<div class="gu" adr="naddr">- 동구</div>
	<div class="gu" adr="naddr">- 부산진구</div>
	<div class="gu" adr="naddr">- 동래구</div>
	<div class="gu" adr="naddr">- 남구</div>
	<div class="gu" adr="naddr">- 북구</div>
	<div class="gu" adr="naddr">- 해운대구</div>
	<div class="gu" adr="naddr">- 사하구</div>
	<div class="gu" adr="naddr">- 금정구</div>
	<div class="gu" adr="naddr">- 강서구</div>
	<div class="gu" adr="naddr">- 연제구</div>
	<div class="gu" adr="naddr">- 수영구</div>
	<div class="gu" adr="naddr">- 사상구</div>
	<div class="gu" adr="naddr">- 기장군</div>
	<div class="gu" adr="naddr">- 영도구</div>
	</div>
	<div id="grant">
	<div id="addbtn" onclick="location.href='addstation.jsp'"><i class='fas fa-plus' style='font-size:24px'></i>&nbsp;역 추가하기</div>
	<div id="updbtn"><i class='	fas fa-wrench' style='font-size:24px'></i>&nbsp;역 수정하기</div>
	<div id="delbtn"><i class='	fas fa-eraser' style='font-size:24px'></i>&nbsp;역 삭제하기</div>
	<div id="a4">DB에 API 입력</div>
	</div>
	<div class="topbtn"><button type="button" class="btn-neon-blue top">맨 위로</button></div>
	
</div>



<script type="text/javascript">
	
</script>
</body>
</html>