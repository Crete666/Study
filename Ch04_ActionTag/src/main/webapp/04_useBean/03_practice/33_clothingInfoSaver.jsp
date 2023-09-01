<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean class="inheritance.ClothingInfo" id="pInfo" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty name="pInfo" property="code" value="7002"/>
	<jsp:setProperty name="pInfo" property="name" value="반팔티셔츠"/>
	<jsp:setProperty name="pInfo" property="price" value="15000"/>
	<jsp:setProperty name="pInfo" property="size" value="L"/>
	<jsp:setProperty name="pInfo" property="color" value="bluesky"/>
	
	<jsp:forward page="31_productInfo.jsp" />
</body>
</html>