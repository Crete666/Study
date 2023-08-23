<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>bodySub에서 name parameter 값 : <%= request.getParameter("name") %></p>
	
	<h3>name parameter 값 목록</h3>
	<ul>
		<%
			String[] names = request.getParameterValues("name");
			for(String name : names){
		%>
			<li><%= name %></li>
		<%
			}
		%>
	</ul>
</body>
</html>