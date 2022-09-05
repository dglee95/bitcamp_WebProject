<%@page import="data.dao.BookingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//num 읽기
	String num=request.getParameter("num");

	//dao 선언
	BookingDao dao=new BookingDao();
	
	//삭제 메서드 호출
	dao.deleteBooking(num);
	
	//startbooking으로 이동
	response.sendRedirect("startbooking.jsp");
%>
