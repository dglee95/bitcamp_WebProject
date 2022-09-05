<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	th{
	text-align: center;
	
	}
	table{
		margin-top: 20px;
		margin-left: 20px;
		border: 1px solid black;
	}
	td{
		text-align: center;
	}
	td.tdn{
		text-align: left;
	}
</style>

</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");//읽어오는 값이 한글일 경우 무조건 선언
	String irum=request.getParameter("irum");
	String gender=request.getParameter("gender");
	String vaccine=request.getParameter("vaccine");
	String []food=request.getParameterValues("food");
	String addr=request.getParameter("addr");
	String content=request.getParameter("content");
	%>
	<table class="table table-bordered" style="width:300px">
	<tr>
	<th class="table-primary" width="100">이 름</th><td><%=irum%></td>
	</tr>
	<tr>
	<th class="table-primary" width="100">성 별</th><td><%=gender%></td>
	</tr>
	<tr>
	<th class="table-primary" width="100">백 신</th><td><%=vaccine==null?"안 맞음":"맞음"%></td>
	</tr>
	<tr>
	<th class="table-primary" width="100" valign="middle">좋아하는 메뉴</th>
	<td>
	<%if(food==null){%>
		좋아하는 음식이 없습니다<br>
		<%}else{%>

			<%for(String f:food){%>
				 <img src=<%=f%> width="100" height="100" border="2" style="margin-bottom:3px;margin-right:3px;border-radius:5px;">
				 <%}
		}%>
	
	</td>
	</tr>
	<tr>
	<th class="table-primary" width="100">주 소</th><td><%=addr%></td>
	</tr>
	<tr>
	<th class="table-primary" width="100" valign="middle">하고싶은 말</th>
	<td class="tdn">
	<pre><b><%=content%><b></b></pre>
	</td>
	</tr>
	</table>	
</body>
</html>