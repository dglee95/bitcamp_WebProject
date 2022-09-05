<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	boolean blogin=false;

	//브라우저에 저장된 모든 쿠키값들을 얻는다
	Cookie []cookies=request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			//cookieok 가 있는지
			String cookieok=cookies[i].getName();
			if(cookieok.equals("cookieok"))//cookieok라는 이름을 가진 쿠키가 있을 경우
			{
				blogin=true;
			}
		}
	}
	
	 if(blogin){
		 //기사 열람
		 %>
		 <pre>
		 정반대 성향 때문에 갈등을 겪는 29세 동갑내기 커플의 사연이 전해진다.
		 22일 오후 방송되는 KBS Joy 예능 '무엇이든 물어보살' 179회에는 한 커플이 의뢰인으로 출연한다.
		 공개된 예고에 따르면 여자친구는 남자친구와 결혼을 생각하고 있는데 두 사람의 성향이 
		 너무 달라 앞으로 어떻게 서로를 이해하고 맞춰가야 할지 고민이라고 토로한다.
		 </pre>
	 <%}else{%>
		<script>
			alert("먼저 암호를 입력해주세요");
			history.back();
		</script> 
	 <%}
	
	
%>