<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client 및 Server 정보</title>
</head>
<body>
<b>request 객체 정보</b><br>
<%= "인코딩 방식 : " + request.getCharacterEncoding() + "<br>" %>
<%= "MIME 타입 : " + request.getContentType() + "<br>" %>
<%= "요청정보 길이 : " + request.getContentLength() + "<br>" %>
<%= "헤더 이름 : " + request.getHeaderNames() + "<br>" %>
<%= "웹 전달 경로 : " + request.getPathInfo() + "<br>" %>
<%= "클라이언트 이름 : " + request.getRemoteHost() + "<br>" %>
<%= "클라이언트 IP 주소 : " + request.getRemoteAddr() + "<br>" %>
<%= "클라이언트 URL 경로 : " + request.getRequestURL() + "<br>" %>
<%= "전송 방식 : " + request.getMethod() + "<br>" %>
<%= "프로토콜 이름 : " + request.getProtocol() + "<br>" %>
<%= "서버 이름 : " + request.getServerName() + "<br>" %>
<%= "서버 포트 번호 : " + request.getServerPort() + "<br>" %>
</body>
</html>