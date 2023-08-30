<%@ page import="java.util.Calendar" %>
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
		request.setCharacterEncoding("utf-8");
	%>
	<!-- 
	1. jsp:param action tag로 전달 가능한 data type은 string만 가능
	2. 만약 String data type 이외의 데이터를 전송할 경우에는 setAttribute를 사용 권장
	-->
	<%
		Calendar cal = Calendar.getInstance();
		request.setAttribute("time", cal);
	%>
	<jsp:forward page="26_forwarded_result.jsp">
		<jsp:param value="홍길동" name="name" />
	</jsp:forward>
</body>
</html>