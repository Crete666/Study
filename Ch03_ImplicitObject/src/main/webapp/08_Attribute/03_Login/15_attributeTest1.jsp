<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, td {
		border : 1px solid blue;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		
		response.setContentType("text/html; charset=utf-8");
		
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	%>
	<%= name %>님 반갑습니다. <br>
	<%= name %>님의 아이디는 <%= id %> 입니다. <br>
	
	<form action="16_attributeTest2.jsp" method="get">
		<table>
			<tr>
				<td colspan="2">Session에 저장될 attribute</td>
			</tr>
			<tr>
				<td>이메일 주소</td>
				<td><input type="text" name="emailaddr"></td>
			</tr>
			<tr>
				<td>집 주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="telephone"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>