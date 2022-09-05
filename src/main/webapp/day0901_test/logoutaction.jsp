<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("loginok");
	session.removeAttribute("num");
	session.removeAttribute("myirum");
	session.removeAttribute("mypass");
	session.removeAttribute("myhp");
	session.removeAttribute("mynick");
	session.removeAttribute("birthday");
	session.removeAttribute("birthiden");
	session.removeAttribute("myaddr");
	session.removeAttribute("power");
	session.removeAttribute("myphoto");
	session.removeAttribute("register");
	response.sendRedirect("subwaymain.jsp");
%>