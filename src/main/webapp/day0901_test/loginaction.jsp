<%@page import="java.util.List"%>
<%@page import="data.dto.SubwayUserDto"%>
<%@page import="data.dao.SubwayUserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String myid=request.getParameter("myid");
	String mypass=request.getParameter("mypass");
	String saveid=request.getParameter("saveid");
	SubwayUserDao dao=new SubwayUserDao();
	List<SubwayUserDto> list=dao.searchId(myid);
	if(list.size()==0){%>
		<script>
			location.href="javascript:history.back()";
			alert("[아이디]를 다시 확인하세요");
		</script>
	<%}else{
		SubwayUserDto dto=list.get(0);
		if(!dto.getMypass().equals(mypass)){%>
			<script>
				location.href="javascript:history.back()";
				alert("[비밀번호]를 다시 확인하세요");
			</script>	
		<%}else{
			session.setMaxInactiveInterval(60*3);
			session.setAttribute("num", dto.getNum());
			session.setAttribute("myirum", dto.getMyirum());
			session.setAttribute("myid", dto.getMyid());
			session.setAttribute("mypass", dto.getMypass());
			session.setAttribute("myhp", dto.getMyhp());
			session.setAttribute("mynick", dto.getMynick());
			session.setAttribute("birthday", dto.getBirthday());
			session.setAttribute("birthiden", dto.getBirthiden());
			session.setAttribute("myaddr", dto.getMyaddr());
			session.setAttribute("power", dto.getPower());
			session.setAttribute("myphoto", dto.getMyphoto());
			session.setAttribute("register", dto.getRegister());
			session.setAttribute("loginok", "yes");
			session.setAttribute("saveid", saveid==null?"no":"yes");
			response.sendRedirect("subwaymain.jsp");
		}
	}
%>
