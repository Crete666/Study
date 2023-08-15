<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request header 정보 가져오기</title>
</head>
<body>
<%
	Enumeration<String> header = request.getHeaderNames();
	while(header.hasMoreElements()){
		String name = header.nextElement();
		String value = request.getHeader(name);
%>

		Header 이름 <%= name %> : <%= value %><br>

<%
	}
%>
	<h3>Web application context path(경로) 가져오기</h3>
	<p><b>Web application context path : </b></p> <%= request.getContextPath() %>
</body>
</html>