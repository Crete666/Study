<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Login 성공하였습니다.</h3>
	
	login한 ID : <%= request.getParameter("id") %><br>
	
	login한 PW : <%= request.getParameter("passwd") %>
</body>
</html>