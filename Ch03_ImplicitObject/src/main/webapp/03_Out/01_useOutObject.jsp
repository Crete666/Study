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
	int grade = 0;
	if(request.getParameter("grade") != null){
		grade = Integer.parseInt(request.getParameter("grade"));
	}
	if(grade > 10){
		out.println("<p>grade : A 등급</p>");
	} else if(grade > 5){
		out.println("<p>grade : B 등급</p>");
	} else {
		out.println("<p>grade : C 등급</p>");
	}
%>

	<h3>out 객체 method 사용</h3>
	<p>버퍼 크기 : <%= out.getBufferSize() %></p>
	<p>남은 크기 : <%= out.getRemaining() %></p>
	<p>auto flush 여부 : <%= out.isAutoFlush() %></p>
</body>
</html>