<%@page import="java.text.NumberFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="data.dto.MyShopDto"%>
<%@page import="data.dao.MyShopDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sangpum=request.getParameter("sangpum");
	
	MyShopDao dao=new MyShopDao();
	List<MyShopDto> list=dao.getSearchSangpums(sangpum);
	
	JSONArray arr=new JSONArray();
	NumberFormat nf=NumberFormat.getCurrencyInstance();
	for(MyShopDto dto:list){
		JSONObject ob=new JSONObject();
		ob.put("num",dto.getNum());
		ob.put("sangpum", dto.getSangpum());
		ob.put("color",dto.getColor());
		ob.put("price",nf.format(dto.getPrice())+"원");
		ob.put("photo","../image2/"+dto.getPhoto()+".jpg");
		arr.add(ob);
	}
	
%>
<%=arr.toString()%>