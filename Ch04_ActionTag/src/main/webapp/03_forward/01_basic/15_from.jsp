<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		jsp:forward action tag 기능 요약
		1. forward 대상 jsp의 contents만 web browser에게 전달됨
		   - forward action tag를 실행한 jsp의 전체 contents가 web browser에게
		     전달이 안됨
		2. web browser가 호출한 최초 jsp의 url이 그대로 web browser에서 보임
		   (forward된 jsp의 url을 web browser 화면에 보이지 않게 함)
		3. web browser가 최초 생성한 request 기본 객체가 forward된 jsp로 그대로
		   전달됨
	-->
	<p>이 페이지는 from.jsp가 생성한 문서입니다.</p>
	<jsp:forward page="/03_forward/01_basic/16_to.jsp" />
	<p>from.jsp의 마지막 내용 입니다.
</body>
</html>