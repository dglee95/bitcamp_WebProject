<%@page import="org.eclipse.jdt.internal.compiler.ast.ThisReference"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
* {
	font-family: 'Jua';
}
</style>

</head>
<body>
	<h2>JSP 수업 시작!!!</h2>
	<%
	//자바 영역 (Scriptlet) 
	//스크립트릿 안의 변수는 지역변수로 등록되므로 선언한 아래쪽에서만 출력이 가능하다
	String name = "이미자";
	int age = 32;
	// 	out은 내장객체 중 하나이다, 타입은 JspWriter
	out.print("이름:" + name + "<br>나이:" + age + "<br>");//불편함
	%>
	<h2 style="color: green;">이름 : <%=name%></h2>	<%-- <%=스크립트 코드%> 표현식이라고 한다 --%>
	<h2 style="color: red;">나이 : <%=age%>세</h2>
	
	<h2>선언문 위에서 출력</h2>
	<h3 style="background-color:pink;">주소:<%=addr %></h3>
	<h4>메세지 : <%=this.getMessage()%></h4>
	
	<%!	//'선언문'이라고 부른다
		//서블릿으로 변환시 멤버변수로 등록,메서드도 등록 가능
		//위치 상관없이 호출이나 출력이 가능하다
		String addr = "서울시 강남구";

		public String getMessage() 
		{
		return "오늘은 금요일입니다!!!";
		}
	%>
	<h2>선언문 아래서 출력</h2>
	<h3 style="background-color:pink;">주소:<%=addr %></h3>
	<h4>메세지 : <%=this.getMessage()%></h4>
	
</body>
</html>






