<%@page import="data.dao.SmartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String nums=request.getParameter("nums");
	String []num=nums.split(",");
	
	SmartDao dao=new SmartDao();
	
	for(int i=0;i<num.length;i++)
	{
		dao.deleteSmart(num[i]);
	}
	
	response.sendRedirect("smartlist.jsp");
	
%>