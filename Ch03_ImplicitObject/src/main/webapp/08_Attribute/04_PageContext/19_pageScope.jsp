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
		// pageContext의 경우 page 내에서만 set / get 가능
		pageContext.setAttribute("name", "pageContext데이터");
	%>
	
	<h3>jsp code 내에 다른 프로그램 소스코드 내용 존재</h3>
	
	<h3>pageContext attribute 조회 및 사용하기</h3>
	<h3><%= pageContext.getAttribute("name") %></h3>
</body>
</html>