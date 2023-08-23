<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>보고 싶은 web page 선택</h3>
	<form action="<%= request.getContextPath() %>/03_forward/02_practice/18_view.jsp">
		<select name="code">
			<option value="A">A 페이지</option>
			<option value="B">B 페이지</option>
			<option value="C">C 페이지</option>
		</select>
		<input type="submit" value="이동">
	</form>
</body>
</html>