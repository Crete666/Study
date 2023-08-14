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
	// jsp가 request, response, out, ... 객체를 자동으로 생성하여 전달해줌
	// -> jsp script code에서 request 객체 사용 가능
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	//PrintWriter out = response.getWriter();
	//PrintWriter의 인스턴스인 out 객체도 자동으로 만들어줌
	out.println("<h1>좋아하는 색 선택</h1>");
	out.println(name + "님이 선택한 color는 " + color + "입니다.");
%>
</body>
</html>