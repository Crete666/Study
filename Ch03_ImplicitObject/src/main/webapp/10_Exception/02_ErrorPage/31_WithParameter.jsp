<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/11_error/32_viewErrorMessage.jsp" %>
<!-- errorPage="Exception 발생시 보여질 JSP 지정" -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parameter 출력</title>
</head>
<body>
	<!-- 
	에러 처리 순서
	1. page directive로 error를 처리할 jsp가 1순위로 실행
	2. web.xml에서 exception class 별 error 처리 jsp page 실행
	3. web.xml에서 error code 별 error 처리 jsp page 실행
	4. web page에 에러 내용이 그대로 보여짐
	
	2. <error-page> 내에 <exception-type>에서 error 처리할 exception class를 작성하고
	   <location>에 처리할 jsp page를 지정
	3. page directive로 error 처리할 page를 지정하지 않았다면, web.xml에서
	   <error-page> 내에 <error-code>에서 error 처리할 code를 작성하고
	   <location>에 처리할 jsp page를 지정
	-->
	name parameter 값 : <%= request.getParameter("name").toString() %>
</body>
</html>