<%@page import="data.dao.SubwayDao"%>
<%@page import="data.dto.SubwayDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String num=request.getParameter("num");
	String line=request.getParameter("line");
	String oaddr=request.getParameter("oaddr");
	String naddr=request.getParameter("naddr");
	String manager=request.getParameter("manager");
	String station=request.getParameter("station");
	
	SubwayDto dto=new SubwayDto();
	dto.setLine(line);
	dto.setManager(manager);
	dto.setNaddr(naddr);
	dto.setNum(num);
	dto.setOaddr(oaddr);
	dto.setStation(station);
	
	SubwayDao dao=new SubwayDao();
	dao.updateSubway(dto);
	
	response.sendRedirect("subwaymain.jsp");
%>