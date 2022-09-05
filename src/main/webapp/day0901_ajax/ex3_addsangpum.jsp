<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="data.dto.MyShopDto"/>
<jsp:useBean id="dao" class="data.dao.MyShopDao"/>
<jsp:setProperty name="dto" property="*"/>
<%
	dao.insertShop(dto);
%>