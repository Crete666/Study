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