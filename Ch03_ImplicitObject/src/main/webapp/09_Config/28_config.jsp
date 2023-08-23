<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>config 기본 객체를 이용한 web.xml에 등록된 초기 parameter 값 읽어오기</title>
</head>
<body>
	<h1>config 기본 객체를 이용한 web.xml에 등록된 초기 parameter 값 읽어오기</h1>
	<%
		/*
		    config 기본 객체 사용법
		    1. web.xml에 등록
		    2. web.xml에 jsp(Servlet) 파일 별로 설정 정보 등록 가능
		    3. web.xml에 servlet 별로 설정된 정보를 읽어올 때 사용
		    <init-param> 에 있는 <param-name>의 <param-value>을 읽어옴
		    <servlet> 에 있는 <servlet-name>은 별명
		                    <jsp-file>은 경로
		    <servlet-mapping>을 보고 tomcat server가 읽고
		    name이 같은 servlet 설정을 적용
		*/
		String dirPath = config.getInitParameter("dirPath");
		String username = config.getInitParameter("username");
	%>
	<p>dirPath : <%= dirPath %></p>
	<p>username : <%= username %></p>
</body>
</html>