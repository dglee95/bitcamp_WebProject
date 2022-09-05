<%@page import="data.dao.MyShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//num읽기
	String num=request.getParameter("num");

	//dao선언
	MyShopDao dao=new MyShopDao();
	
	//삭제
	dao.deleteShop(num);
%>