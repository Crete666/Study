<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute 정보 가져오기</title>
</head>
<body>
	<h3>Session, Application attribute 정보 가져오기</h3>
	<%
		request.setCharacterEncoding("utf-8");
	
		String name = (String) application.getAttribute("name");
		String id = (String) application.getAttribute("id");
		String emailaddr = (String) session.getAttribute("emailaddr");
		String address = (String) session.getAttribute("address");
		String telephone = (String) session.getAttribute("telephone");
		
		response.setContentType("text/html;charset=utf-8");
	%>
	
	<table>
		<tr>
			<td colspan="2">Application에 저장된 attribute</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%= id %></td>
		</tr>
	</table>
	<br>
	<br>
	<table>
		<tr>
			<td colspan="2">Session에 저장된 attribute</td>
		</tr>
		<tr>
			<td>이메일 주소</td>
			<td><%= emailaddr %></td>
		</tr>
		<tr>
			<td>집 주소</td>
			<td><%= address %></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%= telephone %></td>
		</tr>
	</table>
</body>
</html>