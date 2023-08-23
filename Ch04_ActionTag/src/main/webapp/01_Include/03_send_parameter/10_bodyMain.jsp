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
		// 원래 post method에서 사용하는 encoding 설정 명령어,
		// jsp:include action tag로 다른 jsp에 한글 parameter 정보를 전달할 때
		// encoding 설정 용도로 작성됨
		request.setCharacterEncoding("utf-8");
	%>
	<p> include 전 name parameter 값 : <%= request.getParameter("name") %></p>
	<hr>
	<jsp:include page="11_bodySub.jsp">
		<jsp:param name="name" value="최범균" />
	</jsp:include>
	<hr>
	<p>include 후 name parameter 값 : <%= request.getParameter("name") %></p>
</body>
</html>