<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에서 loginok제거 후
	session.removeAttribute("loginok");
	//로그인메인으로 이동
	response.sendRedirect("loginmain.jsp");
%>