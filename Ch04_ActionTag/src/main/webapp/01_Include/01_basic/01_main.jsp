<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	01_main.jsp에서 생성한 내용
	<!--
	jsp:include action tag 동작 방법
	1. 01_main.jsp와 02_sub.jsp가 각각 별도로 java code가 생성되고
	   servlet class도 각각 생성됨
	2. 01_main.jsp를 실행하는 중간에 jsp:include action tag를 만나면
	   02_sub.jsp를 실행 시작하고, 02_sub.jsp 실행이 끝나면 다시
	   01_main.jsp로 돌아와서 나머지를 실행함
	3. 만약, 02_sub.jsp가 새로운 내용으로 코딩이 되어도 항상 02_sub.jsp를 실행
	   -> include directive와 달리 수정된 내용의 02_sub.jsp가 실행됨
	   -> 01_main과 02_sub가 항상 따로 컴파일 됨
	
	include directive의 경우 code를 복사하여 하나의 java 파일로 만듬
	-> include로 포함된 jsp가 새로운 내용으로 수정 되어도 기존의 jsp가 수정되지 않으면
	   새로운 내용으로 update 되지 않는 문제가 있음
	-->
	<jsp:include page="02_sub.jsp" flush="false" />
	
	<p>02_sub.jsp include 이후의 내용
</body>
</html>