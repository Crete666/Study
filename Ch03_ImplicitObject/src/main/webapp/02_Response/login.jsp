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
	if(id != null && id.equals("hong")){
		response.sendRedirect("main.jsp?id=hong");
	} else {
%>
		<p style="color:red">잘못된 아이디 입니다.</p>
<%
	}
%>
</body>
</html>