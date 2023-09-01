<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean class="inheritance.BookInfo" id="pInfo" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty name="pInfo" property="code" value="5001" />
	<jsp:setProperty name="pInfo" property="name" value="의뢰인" />
	<jsp:setProperty name="pInfo" property="price" value="9000" />
	<jsp:setProperty name="pInfo" property="page" value="340" />
	<jsp:setProperty name="pInfo" property="writer" value="마틴" />
	
	<jsp:forward page="31_productInfo.jsp" />
</body>
</html>