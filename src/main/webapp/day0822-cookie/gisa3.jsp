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
		 검찰이 김효준 전 BMW코리아 대표의 차량 연쇄화재와 결함 은폐의혹 재수사에 착수했다.
		 22일 법조계에 따르면 서울중앙지검은 김 전 대표 사건을 환경·교통범죄 전담부서인 
		 형사5부(부장검사 최우영)에 배당하고 재수사에 나섰다.
		 서울중앙지검은 지난 5월 BMW차량 연쇄화재와 결함 은폐 의혹과 관련해 
		 BMW코리아 법인과 임직원 4명을 자동차관리법 위반 혐의로 불구속기소했다.
		 이들은 2016~2018년 일부 BMW 디젤자동차에서 발생하는 장치 불량 등의 결함이 있는 것을 알고도 숨긴 혐의를 받는다. 
		 이들은 결함과 관련된 자료를 정부에 제출하지 않거나 결함과 관련된 표현을 삭제하고 제출한 혐의를 받는다.
		 </pre>
	 <%}else{%>
		<script>
			alert("먼저 암호를 입력해주세요");
			history.back();
		</script> 
	 <%}
	
	
%>