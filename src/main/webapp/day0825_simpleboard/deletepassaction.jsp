<%@page import="data.dao.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String num=request.getParameter("num");
	String pass=request.getParameter("pass");
	
	SimpleBoardDao dao=new SimpleBoardDao();
	boolean check=dao.isPassCheck(num, pass);
	
	if(!check){%>
		<script type="text/javascript">
			alert("비밀번호가 틀렸습니다");
			history.back();
		</script>
	<%}else{
		dao.deleteBoard(num);%>
		<script type="text/javascript">
			alert("삭제되었습니다");
			location.href="boardlist.jsp";
		</script>
<!-- 		response.sendRedirect("boardlist.jsp"); -->
<%}%>