<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- isErrorPage : Exception 처리 페이지 설정
                   default : false
                   true로 설정해야 exception 처리 페이지로 설정됨
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception 처리</title>
</head>
<body>
	요청처리 과정 중에서 에러가 발생하였습니다.<br>
	빠른 시간 내에 문제 해결하도록 하겠습니다.
	<p>
	에러 타입 : <%= exception.getClass().getName() %>
	에러 메세지 : <%= exception.getMessage() %>
	</p>
</body>
</html>