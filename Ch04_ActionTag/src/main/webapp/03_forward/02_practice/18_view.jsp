<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String code = request.getParameter("code");
		String viewPageURI = null;
		
		if(code.equals("A")){
			viewPageURI = "/03_forward/02_practice/99_viewModule/19_a.jsp";
		} else if(code.equals("B")){
			viewPageURI = "/03_forward/02_practice/99_viewModule/20_b.jsp";
		} else if(code.equals("C")) {
			viewPageURI = "/03_forward/02_practice/99_viewModule/21_c.jsp";
		}
	%>
	<jsp:forward page="<%= viewPageURI %>" />
</body>
</html>