<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//아이디와 비번, 체크박스를 읽는다
	String myid=request.getParameter("myid");
	String mypass=request.getParameter("mypass");
	String saveid=request.getParameter("saveid");//체크박스 on or null
	//아이디와 비번이 맞으면 세션에 3가지 저장
	if(mypass.equals("1234")){
		//유지시간 20초정도로 변경해보자(생략시 유지시간은 30분)
		//다시 유지시간을 8시간으로 해보자 수식으로 적어야 해독가능
		session.setMaxInactiveInterval(60*60*8);
		
		session.setAttribute("myid", myid);
		session.setAttribute("loginok", "yes");
		session.setAttribute("saveid", saveid==null?"no":"yes");

		//세션 저장 후 메인으로 이동
		response.sendRedirect("loginmain.jsp");
	}else{
	//틀리면 자바스크립트로 경고 후 이전페이지로 이동
	%>
		<script>
			alert("비밀번호가 맞지 않습니다");
			history.back();//history.go(-1)와 같다 전전페이지는 -2 back은 몰라
		</script>
	<%}

%>