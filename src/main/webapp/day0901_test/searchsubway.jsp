<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="data.dto.SubwayDto"%>
<%@page import="data.dao.SubwayDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String where=request.getParameter("where");	
	String search=request.getParameter("search");
	
// 	String where="line";
// 	String search="1";

	SubwayDao dao=new SubwayDao();
	List<SubwayDto> list=dao.getSearchSubway(where, search);
	
	JSONArray arr=new JSONArray();
	
	for(SubwayDto dto:list){
		JSONObject ob=new JSONObject();
	 	String []city=dto.getNaddr().split("\\s");
	 	ob.put("city", (city[0].equals("부산광역시"))?"부산":(city[0].equals("경상남도"))?"경남":dto.getManager().substring(0, 2));
		ob.put("line", dto.getLine());
		ob.put("station", dto.getStation());
		ob.put("naddr",  dto.getNaddr());
		ob.put("oaddr",  dto.getOaddr());
		ob.put("num",dto.getNum());
		arr.add(ob);
	}
%>
<%=arr.toString()%>
