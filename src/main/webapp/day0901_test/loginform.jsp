<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
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
	#loginbtn{
		background-color:white;
		border:0px;
		border-radius:10px;
		margin-left:10px;
		margin-top:10px;
	}
	
	#spid,#sppw{
		color:#000;
	}
	#spid:hover,#sppw:hover{
		cursor:pointer;
		background:#9560F7;
		color:#431d8a;
		transform:scale(1.1);
	}

	
	#loginbtn:hover,#regbtn:hover,#logoutbtn:hover,#modbtn:hover{
		background:#9560F7;
		color:#fff;
		box-shadow: 0 0 5px #9560F7, 0 0 25px #9560F7, 0 0 50px #9560F7, 0 0 100px #9560F7;
		
	}
	.btn-neon-purple{color:#9560F7;outline:2px solid #9560F7;font-weight:bold;margin:3px 3px 10px 3px;}
	.btn-neon-purple:hover{background:#9560F7;color:#fff;box-shadow: 0 0 5px #9560F7, 0 0 25px #9560F7, 0 0 50px #9560F7, 0 0 100px #9560F7;transform:scale(1.2);}
	/* .btn-neon-purple.focus,.btn-neon-purple:focus{color:#fff;background-color:#9560F7;border-color:#9560F7;box-shadow:0 0 0 .2rem #9560F7} */
	.btn-neon-purple.disabled,.btn-neon-purple:disabled{color:#fff;background-color:#9560F7;border-color:#9560F7}
	.btn-neon-purple:not(:disabled):not(.disabled).active,.btn-neon-purple:not(:disabled):not(.disabled):active,.show>.btn-neon-purple.dropdown-toggle{color:#fff;background-color:#9560F7;border-color:#9560F7}
	.btn-neon-purple:not(:disabled):not(.disabled).active:focus,.btn-neon-purple:not(:disabled):not(.disabled):active:focus,.show>.btn-neon-purple.dropdown-toggle:focus{box-shadow:0 0 0 .2rem #9560F7}
	
	.table-purple{--bs-table-bg:#9560F7;--bs-table-striped-bg:#c5e8ef;--bs-table-striped-color:#000;--bs-table-active-bg:#badce3;--bs-table-active-color:#000;--bs-table-hover-bg:#bfe2e9;--bs-table-hover-color:#000;color:#000;border-color:#badce3}
	.table{--bs-table-bg:transparent;--bs-table-accent-bg:transparent;--bs-table-striped-color:#212529;--bs-table-striped-bg:rgba(0, 0, 0, 0.05);--bs-table-active-color:#212529;--bs-table-active-bg:rgba(0, 0, 0, 0.1);--bs-table-hover-color:#212529;--bs-table-hover-bg:rgba(0, 0, 0, 0.075);width:100%;margin-bottom:1rem;color:#212529;vertical-align:top;
	border-color:#7936f5;border-collapse: collapse;border-style: hidden;box-shadow: 0 0 0 1px #000;}
	
	table th{
		color:black;
		font-family: 'Hahmlet';
		font-size:20px;
		
	}
	table td,.oad{
		font-family: 'Hahmlet';
		font-size:0.8em;
	}
	#login{
		position: absolute;
		left:30%;
		top:30%;
		transform:translate(-60%,-50%);
	}
</style>
</head>
<%
	//세션으로부터 아이디와 체크값을 얻는다
	String myid=(String)session.getAttribute("myid");
	String saveid=(String)session.getAttribute("saveid");
	
	boolean savechk=true;
	
	if(saveid==null || saveid.equals("no"))//조건이 여러가지일경우 null부터 먼저 쓴다
	//null먼저 안 쓰면 널포인터익셉션 뜸
	{
		myid="";//아이디저장을 체크하지 않은 경우 아이디 없앤다
		savechk=false;//체크하지 않았을 경우 false, 그 이외에는 초기값이 true이므로 true가 된다
	}
%>
<body>
<script>
	$(function(){
		$("#spid").click(function(){
			$("#myid").focus();
		});
		
		$("#sppw").click(function(){
			$("#mypass").focus();
		});

		
	});

</script>
	<div style="margin: 100px 100px;" id="login">
		<form action="loginaction.jsp" method="post">
			<table class="table table-bordered" style="width: 300px;">
				<caption align="top">
					<label><input type="checkbox" name="saveid" <%=savechk?"checked":""%>>&nbsp;아이디저장</label>
				</caption>
				<tr align='center' valign='middle'>
					<th class='table-purple spid' align='center' id="spid">아이디</th>
					<td><input type="text" name="myid" class="form-control" id="myid"
						style="width: 160px;" value="<%=myid%>" required="required"></td>
				</tr>
				<tr align='center' valign='middle'>
					<th class='table-purple sppw' align='center' id="sppw">비밀번호</th>
					<td><input type="password" name="mypass" class="form-control" id="mypass"
						style="width: 160px;" required="required"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-neon-purple btn-sm" id="loginbtn">로그인</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>