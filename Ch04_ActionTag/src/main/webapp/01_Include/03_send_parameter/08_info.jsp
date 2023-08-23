<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp include action tag로 정보 전달</title>
</head>
<body>
	<table>
		<tr>
			<td>제품번호</td>
			<td>XXXX</td>
		</tr>
		<tr>
			<td>가격</td>
			<td>10,000원</td>
		</tr>
	</table>
	
	<jsp:include page="09_infoSub.jsp">
		<jsp:param value="A" name="type"/>
		<jsp:param value="hong" name="userid"/>
	</jsp:include>
</body>
</html>