
<%@page import="data.dao.BookingDao"%>
<%@page import="data.dto.BookingDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1.엔코딩
	request.setCharacterEncoding("utf-8");
	//데이터 읽기
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String bookday=request.getParameter("bookday");
	int inwon=Integer.parseInt(request.getParameter("inwon"));
	String message=request.getParameter("message");
	
	//메뉴와 가격(,로 연결해서 dto에 넣을것임)
	String foodname="";
	String foodprice="";
	
	String []food=request.getParameterValues("food");
	for(String f:food)
	{
		System.out.println(f);
		//,로 분리해서 앞부분은 foodname에, 뒷부분은 foodprice에 넣고 컴마 추가
		String []data=f.split(",");
		foodname+=data[0]+",";
		foodprice+=data[1]+",";
	}
	
	//반복문 나온 후 마지막 컴마 지우기
	foodname=foodname.substring(0,foodname.length()-1);//마지막 한글자를 빼고 추출
	foodprice=foodprice.substring(0,foodprice.length()-1);
	System.out.println(foodname);
	System.out.println(foodprice);
	
	//dto에 담기
	BookingDto dto=new BookingDto();
	dto.setName(name);
	dto.setGender(gender);
	dto.setBookday(bookday);
	dto.setFoodphoto(foodname);
	dto.setFoodprice(foodprice);
	dto.setMessage(message);
	dto.setInwon(inwon);
	
	//dao 선언 후
	BookingDao dao=new BookingDao();
	
	//insert 메서드 호출
	dao.insertBooking(dto);
	
	//목록으로 이동
	response.sendRedirect("startbooking.jsp");
	
%>
