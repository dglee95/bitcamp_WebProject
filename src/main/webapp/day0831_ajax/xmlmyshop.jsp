<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.MyShopDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.MyShopDao"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<data>
<%
	//dao선언
	MyShopDao dao=new MyShopDao();

	//list가져오기
	List<MyShopDto> list=dao.getAllSangpums();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH시");
	NumberFormat nf=NumberFormat.getCurrencyInstance();
	
	for(MyShopDto dto:list){%>
		<myshop>
			<num><%=dto.getNum()%></num>
			<sangpum><%=dto.getSangpum()%></sangpum>
			<photo>../image2/<%=dto.getPhoto()%>.jpg</photo>
			<color><%=dto.getColor()%></color>
			<price><%=nf.format(dto.getPrice())%></price>
			<ipgoday><%=dto.getIpgoday()%></ipgoday>
			<writeday><%=sdf.format(dto.getWriteday())%></writeday>
		</myshop>
	<%}
	
%>
</data>
    
    
    
    
    
    
    