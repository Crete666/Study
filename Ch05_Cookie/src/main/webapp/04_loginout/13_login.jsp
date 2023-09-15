<%@ page import="util.Cookies" %>
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
		String password = request.getParameter("password");
		
		// login 성공 여부 : id와 password가 동일한지 여부로 판단
		if(id.equals(password)) {
			// id를 cookie에 저장, maxAge가 -1이면 영원히 저장됨
			response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
	%>
			<p>로그인에 성공했습니다.</p>
	<%
		} else { // login 실패한 경우
	%>
			<script>
				window.alert("로그인에 실패했습니다.");
				history.go(-1); // 바로 이전 페이지로 이동
			</script>
	<%
		}
	%>
</body>
</html>