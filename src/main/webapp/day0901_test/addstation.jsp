<%@page import="data.dao.SubwayDao"%>
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
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	div.addstation{
		position:absolute;
		left:10%;
		top:10%;
	}
	div.addstation th{
		background-color:#48d1cc;
		
	}
	#city{
		float:left;
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

<script type="text/javascript">
	
</script>
</head>
<body>
<div class="addstation"  style="width:600px;">
<form action="addaction.jsp" method="post">
<table class="table table-bordered">
	<caption align="top" style="color:#48D1CC;font-size:30px;"><i class='fas fa-plus' style='font-size:24px'></i>&nbsp;??????</caption>
	<tr align="center" valign="middle">
		<th width="100" style="background-color:#48d1cc;align:center;valign:middle;">??????</th>
		<td>
			<select id="city" required="required" class="form-select" style="width:100px;">
				<option hidden="hidden" disabled selected>??????</option>
				<option value="??????">??????</option>
				<option value="??????">??????</option>
			</select>
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th width="150" >??????</th>
		<td>
			<input type="text" name="line" required="required" class="form-control" placeholder="????????? ???????????????">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>??? ??????</th>
		<td>
			<input type="text" id="station" name="station" required="required" class="form-control" placeholder="??? ????????? ???????????????">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>?????? ??????</th>
		<td>
			<input type="text" name="oaddr" required="required" class="form-control" placeholder="??? ????????? ???????????????">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>????????? ??????</th>
		<td>
			<input type="text" name="naddr" required="required" class="form-control"  placeholder="????????? ????????? ???????????????">
		</td> 
	</tr>
	<tr align="center" valign="middle">
		<th>??????????????????</th>
		<td>
			<input type="text" name="manager" required="required" class="form-control"  placeholder="??????????????? ???????????????">
		</td> 
	</tr>
	<tr style="border:0px solid white;">
		<td colspan="2" align="center">
			<button type="submit" id="btnsave" class="btn btn-neon-green">??????</button>
			<button type="button" id="main" class="btn btn-neon-red" onclick="location.href='subwaymain.jsp'">??????</button>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>