<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Scriptlet -->
<%
	String bookName = "JSP기초";
	String author = "최범균";
%>

<!-- expression -->
<b><%= bookName %></b>의 저자는 <%= author %>입니다.
</body>
</html>