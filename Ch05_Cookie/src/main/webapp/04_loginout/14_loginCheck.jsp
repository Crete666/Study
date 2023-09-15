<%@ page import="util.Cookies" %>
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
		Cookies cookies = new Cookies(request);
	%>
	<h3>로그인 여부 검사</h3>
	<%
		if(cookies.exists("AUTH")) {
	%>
			<p>아이디 <%= cookies.getValue("AUTH") %>로 로그인한 상태입니다.</p>
	<%
		} else {
	%>
			<p>로그인한 상태가 아닙니다.</p>
	<%
		}
	%>
</body>
</html>