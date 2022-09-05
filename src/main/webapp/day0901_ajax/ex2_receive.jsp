<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String photono=request.getParameter("photono");
	String photofood=request.getParameter("photofood");
	String java=request.getParameter("java");
	String jquery=request.getParameter("jquery");
	String html=request.getParameter("html");
	
	//총점
	int tot=Integer.parseInt(java)+Integer.parseInt(jquery)+Integer.parseInt(html);
	//평균
	double avg=tot/3.0;
	
	
	JSONObject ob=new JSONObject();
	
	ob.put("photo", "../image/"+photono+".jpg");
	ob.put("food", photofood);
	ob.put("tot", tot);
	ob.put("avg", String.format("%.2f",avg));


%>
<%=ob.toString()%>