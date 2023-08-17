<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>setAttribute.jsp에서 request, session, application attribute 설정값 가져오기</h3>
	<!-- request 객체에 설정된 정보를 가져오면 null 값 가져옴
		 request 기본 객체는 web browser에서 web server로 신청할 때마다 새로 생성되기
		 때문에 기존 request 객체에 설정된 attribute는 존재하지 않음
	-->
	<p>request : <%= request.getAttribute("id") %></p>
	<p>session : <%= session.getAttribute("id") %></p>
	<p>application : <%= application.getAttribute("id") %></p>
	
</body>
</html>