<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Redirect Test B</h3>
	<%
		// parameter로 한글을 보낼 경우 인코딩하는 코드 필요
		String value = "자바";
		String encodedValue = URLEncoder.encode(value, "utf-8");
		response.sendRedirect("redirectTestBResult.jsp?name="+encodedValue);
	%>
</body>
</html>