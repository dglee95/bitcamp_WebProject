<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.SmartAnswerDao"%>
<%@page import="data.dto.SmartAnswerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//idx에 해당하는 dto를 얻어서 json으로 반환(프론트로 보낸다)
	String idx=request.getParameter("idx");
	SmartAnswerDao adao=new SmartAnswerDao();	
	SmartAnswerDto dto=adao.getAnswerData(idx);
	
	JSONObject ob=new JSONObject();
	ob.put("idx", dto.getIdx());
	ob.put("nickname", dto.getNickname());
	ob.put("content", dto.getContent());
%>
<%=ob.toString()%>