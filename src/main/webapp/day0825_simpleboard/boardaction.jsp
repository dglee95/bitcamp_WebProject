<%-- <%@page import="data.dto.SimpleBoardDto"%> --%>
<%-- <%@page import="data.dao.SimpleBoardDao"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//엔코딩
	request.setCharacterEncoding("utf-8");
// 	String writer=request.getParameter("writer");
// 	String pass=request.getParameter("pass");
// 	String subject=request.getParameter("subject");
// 	String content=request.getParameter("content");
// 	SimpleBoardDao dao=new SimpleBoardDao();
// 	SimpleBoardDto dto=new SimpleBoardDto();
	
// 	dto.setWriter(writer);
// 	dto.setPass(pass);
// 	dto.setSubject(subject);
// 	dto.setContent(content);

%>
<!-- useBean은 jsp에만 있는 기능 -->
<!-- useBean은 new로 객체 생성하는 것과 같다
id는 변수명 class는 클래스명 -->
<jsp:useBean id="dao" class="data.dao.SimpleBoardDao"/>
<jsp:useBean id="dto" class="data.dto.SimpleBoardDto"/>
<!-- dto의 멤버와 같은 이름의 폼태그는 자동으로 읽어서 dto에 넣어주기 -->
<!-- name은 클래스변수명 property는 변수명 value는 값 변수명과 dto의 변수명이 같으면 아래처럼 -->
<jsp:setProperty property="*" name="dto"/>
<!-- getParameter한걸 dto.set한거랑 똑같은거 그래서 name에 dto가 들어감 setter-->
<%
	//db에 insert
	dao.insertBoard(dto);	
	
	//목록으로 이동
// 	response.sendRedirect("boardlist.jsp");

	//방금 쓴 글으로 이동
	response.sendRedirect("contentview.jsp?num="+dao.getMaxNum());
	
%>

