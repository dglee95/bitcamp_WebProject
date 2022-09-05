<%@page import="java.util.List"%>
<%@page import="java.util.Objects"%>
<%@page import="data.dao.SubwayDao"%>
<%@page import="data.dto.SubwayDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
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
		dao.insertSubway(dto);
		response.sendRedirect("subwaymain.jsp");
		}else{%>
		<script>
 			alert("이미 존재하는 역입니다");
 			location.href="javascript:history.back()";
		</script>
	<%}
%>