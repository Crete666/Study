<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean class="inheritance.ProductInfo" id="pInfo" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>코드 : <jsp:getProperty name="pInfo" property="code" /></p>
	<p>이름 : <jsp:getProperty name="pInfo" property="name" /></p>
	<p>가격 : <jsp:getProperty name="pInfo" property="price" /></p>
</body>
</html>