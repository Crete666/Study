<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request, session, application attribute 설정</h3>
	<%
		request.setAttribute("id", "hong");
		session.setAttribute("id", "kim");
		application.setAttribute("id", "lee");
	%>
	
	<h3>request, session, application attribute 설정값 가져오기</h3>
	<p>request : <%= request.getAttribute("id") %></p>
	<p>session : <%= session.getAttribute("id") %></p>
	<p>application : <%= application.getAttribute("id") %></p>
	
	<h3>다른 JSP에서 request, session, application attribute 설정값 가져오기</h3>
	<p>확인 버튼 클릭하기 : </p> <input type="button" value="확인" onclick="javascript:window.location='11_getAttribute.jsp'"> 
</body>
</html>