<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Redirect Test A</h3>
	<%
		/*
		sendRedirect :
		1. web browser에게 html 결과값을 보내주는 대신에
		   다른 web page로 이동하라는 요청을 전달
		2. web browser는 다른 web page로 자동으로 요청 전달함
		3. web browser가 최종 접속한 web page의 주소가 url에 표시됨
		4. 최초에 web browser에게 받은 parameter list 또는 새로운 parameter data를
		   redirect 하는 web page에 전달 가능
		*/
		response.sendRedirect("redirectTestAResult.jsp?id=hong");
	%>
</body>
</html>