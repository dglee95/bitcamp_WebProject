<%-- <%@page import="data.dto.SimpleBoardDto"%> --%>
<%-- <%@page import="data.dao.SimpleBoardDao"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
// 	String num=request.getParameter("num");
// 	String subject=request.getParameter("subject");
// 	String writer=request.getParameter("writer");
// 	String pass=request.getParameter("pass");
// 	String content=request.getParameter("content");
	
// 	SimpleBoardDao dao=new SimpleBoardDao();
	
// 	SimpleBoardDto dto=new SimpleBoardDto();
// 	dto.setNum(num);
// 	dto.setSubject(subject);
// 	dto.setWriter(writer);
// 	dto.setPass(pass);
// 	dto.setContent(content);
%>
<jsp:useBean id="dao" class="data.dao.SimpleBoardDao"/>
<jsp:useBean id="dto" class="data.dto.SimpleBoardDto"/>
<jsp:setProperty property="*" name="dto"/>
<%
	dao.updateBoard(dto);
 	response.sendRedirect("contentview.jsp?num="+dto.getNum());
%>
