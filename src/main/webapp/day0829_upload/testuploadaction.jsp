<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
</style>

</head>
<body>
<%
	//업로드할 폴더
	String realFolder=getServletContext().getRealPath("/save");
	System.out.println(realFolder);//콘솔로 이클립스내의 톰캣위치에 저장된 save 확인
	//업로드할 이미지의 크기(1024byte*1024=1메가)
	int uploadSize=1024*1024*3;//3mb
	
	MultipartRequest multiRequest=null;
	
	try{
		//DefaultFileRenamePolicy:같은 이름으로 업로드할 경우 자동으로 이름을 변경해줌
		multiRequest=new MultipartRequest(request,realFolder,uploadSize,
				"utf-8",new DefaultFileRenamePolicy());
		//메세지 읽기
		String message=multiRequest.getParameter("message");
		//업로드된 파일의 오리지날 파일명 읽기
		String originalFile=multiRequest.getOriginalFileName("upload");
		//실제 업로드된 파일명 같은 이름이 있으면 1,2,3,4가 붙음
		String uploadFile=multiRequest.getFilesystemName("upload");
		
		//출력해보기(테스트 용도)
	%>
		<h2>메세지 : <%=message %></h2>
		<h2>원래 파일명 : <%=originalFile %></h2>
		<h2>업로드 된 파일명 : <%=uploadFile %></h2>
		<h2>업로드한 사진</h2>
		<img src="../save/<%=uploadFile %>" style="max-width:800px;">
		
	<%}catch(Exception e){
		System.out.println("업로드 오류:"+e.getMessage());
	}
	
%>
</body>
</html>
















