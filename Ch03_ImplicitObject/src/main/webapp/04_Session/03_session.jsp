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
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String sessionId = session.getId();
		
		int sessionTime = session.getMaxInactiveInterval();
		
		out.println(id + "님, 환영합니다.<br>");
		out.println("생성된 session ID : " + sessionId + "<br>");
		out.println("세션 유지 시간(초) : " + sessionTime + "<br>");
	%>

</body>
</html>