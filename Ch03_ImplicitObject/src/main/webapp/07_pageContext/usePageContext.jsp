<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 기본 객체 사용</title>
</head>
<body>
	<%
		// getRequest method의 return type은 object
		// -> casting 해주어야함
		HttpServletRequest httpRequest = (HttpServletRequest) pageContext.getRequest();
		HttpServletResponse httpResponse = (HttpServletResponse) pageContext.getResponse();
		ServletContext servletContext = pageContext.getServletContext();
	%>
	
	<!-- pageContext 기본 객체의 사용 용도
		 주로 request, response, session, application 등 다른 기본 객체를 가져올 때 사용
	-->
	<h3>pageContext를 사용하여 얻은 객체와 기본 객체 비교하기</h3>
	<p>httpRequest와 request 기본 객체 비교하기 : <%= (httpRequest == request) %></p>
	<p>httpResponse와 response 기본 객체 비교하기 : <%= (httpResponse == response) %></p>
	<p>servletContext와 application 기본 객체 비교하기 : <%= (servletContext == application) %></p>
	
</body>
</html>