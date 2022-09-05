<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전체 쿠키 중 cookieok를 찾아서 유지시간을 0으로 준후
	//다시 브라우저에 추가하면 된다
	Cookie []cookies=request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++)
		{
			Cookie logincookie=cookies[i];
			if(logincookie.getName().equals("cookieok")){
				logincookie.setMaxAge(0);//1하면 로그아웃 안되는 경우도 있다고 함
				logincookie.setPath("/");
				response.addCookie(logincookie);
				break;
			}
		}
	}
	
	//메인페이지로 이동
	response.sendRedirect("cookiemain.jsp");

%>