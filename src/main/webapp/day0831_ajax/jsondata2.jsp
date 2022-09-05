<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name="제이슨";
	String addr="미국 뉴욕";
	
	JSONArray arr=new JSONArray();
	JSONObject ob=new JSONObject();
	JSONObject ob1=new JSONObject();
	
	
	ob.put("name", name);
	ob.put("addr", addr);
	
	ob1.put("name","이름");
	ob1.put("addr","주소");
	

	arr.add(ob);
	arr.add(ob1);
	
	String data="{\"name\":\""+name+"\",\"addr\":\""+addr+"\"}";
	
%>
<%=data%>
<%=ob.toString()%>
<%=ob1.toString() %>
<%=arr.toString()%>