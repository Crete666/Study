<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String hobby = request.getParameter("hobby");
	%>
	<h3>forward한 parameter 값 보기</h3>
	<p><b><%= id %></b>님의 취미는 <b><%= hobby %></b> 입니다.</p>
</body>
</html>