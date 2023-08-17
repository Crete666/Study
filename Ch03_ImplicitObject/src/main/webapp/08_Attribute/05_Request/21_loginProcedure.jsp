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
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		request.setAttribute("id", id);
		request.setAttribute("passwd", passwd);
	%>
	
	<h3>Login Procedure.jsp 본문 내용 입니다.</h3>
	
	<%
		if(id.equals("admin") && passwd.equals("1234")){
	%>
			<!-- 
			<jsp:forward> action tag는 request 객체를 다른 jsp로 직접 전달할 때 사용
			참고로, 원칙적으로는 request 기본 객체는 web browser에서만 생성하여
			web server로 전달 가능
			-->
			<jsp:forward page="22_loginSuccess.jsp"></jsp:forward>
	<%
		} else {
	%>
			<jsp:forward page="23_loginFail.jsp"></jsp:forward>
	<%
		}
	%>
</body>
</html>