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
		 정기석 국가감염병 위기대응 자문위원회(이하 자문위원회) 위원장이 
		 22일 "의사 입장에서 코로나19(COVID-19)는 제2의 독감이다"며 
		 "앞으로도 코로나19로 입원하는 사람이 지금 같이 많을 필요가 없다"고 말했다.
		 정 위원장은 이날 서울 종로구 정부서울청사 별관에서 열린 자문위원회 설명회에서 
		 "독감으로 입원하는 환자를 별로 못 봤을 것이다. 
		 치료제가 있어 굳이 입원해도 무엇을 할 게 없다"며 이같이 밝혔다.
		 </pre>
	 <%}else{%>
		<script>
			alert("먼저 암호를 입력해주세요");
			history.back();
		</script> 
	 <%}
	
	
%>