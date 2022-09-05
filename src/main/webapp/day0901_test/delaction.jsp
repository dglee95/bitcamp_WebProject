<%@page import="data.dao.SubwayDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num=request.getParameter("num");
	
	SubwayDao dao=new SubwayDao();
	
	dao.deleteSubway(num);
	
	response.sendRedirect("subwaymain.jsp");%>
