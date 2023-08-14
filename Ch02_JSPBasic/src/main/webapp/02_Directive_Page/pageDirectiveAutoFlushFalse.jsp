<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 1kb = 1024bytes -->
<!-- autoFlush : buffer가 꽉 차면 자동으로 buffer를 비울 것인지
	 1. autoFlush를 false로 지정하면 web browser에 보낼 전체 데이터가 buffer size 보다
	 	작으면 에러 없이 전송 가능
	 2. 만약, web browser에 전송할 데이터 전체 크기가 buffer size보다 크면 Exception 에러 발생
	 3. 보통 autoFlush를 true로 지정 (default)
	 4. buffer size는 기본이 8kb이고, 가능하면 많이 잡아 놓는 것이 좋음
-->
<%@ page buffer="1kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>page autoFlush 속성값 false 예제</h3>
	<%
		for(int i=0;i<100;i++){
	%>
			<b>1234(실제 html 화면에 반복 출력할 내용)</b>
	<%
		}
	%>
</body>
</html>