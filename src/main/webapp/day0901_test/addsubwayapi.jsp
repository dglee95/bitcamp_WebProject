<%@page import="java.util.List"%>
<%@page import="data.dto.SubwayDto"%>
<%@page import="data.dao.SubwayDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String line=request.getParameter("line");
	String station=request.getParameter("station");
	String oaddr=request.getParameter("oaddr");
	String naddr=request.getParameter("naddr");
	String manager=request.getParameter("manager");
	
	SubwayDao dao=new SubwayDao();
	List<SubwayDto> list=dao.getSubway(station);
	
	SubwayDto dto=new SubwayDto();
	if(list.size()==0){
		dto.setLine(line);
		dto.setManager(manager);
		dto.setNaddr(naddr);
		dto.setOaddr(oaddr);
		dto.setStation(station);
		//insert
		dao.insertSubway(dto);
	}else{
		return;
	}
	
	
%>