<%@page import="data.dao.SmartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//num,currentPage 읽기
	String num=request.getParameter("num");
	String currentPage=request.getParameter("currentPage");
	
	//dao선언
	SmartDao dao=new SmartDao();
	
	//삭제 메서드 호출
	dao.deleteSmart(num);
	
	//목록 보던 페이지로 이동
	response.sendRedirect("smartlist.jsp?currentPage="+currentPage);

%>