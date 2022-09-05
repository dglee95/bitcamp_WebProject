<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//front에서 보낸 데이터를 읽는다
	String irum=request.getParameter("irum");
	String addr=request.getParameter("addr");
	
	//front로 보낼 데이터를 만든다
	String message=irum+"님은 "+addr+"에 살고 있어요!!";
	
	JSONArray arr=new JSONArray();
	JSONObject ob=new JSONObject();
	JSONObject ob1=new JSONObject();
	ob.put("message", message);
	ob1.put("message", "반갑고");
	
	arr.add(ob);
	arr.add(ob1);
%>
<%=ob%>
