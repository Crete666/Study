<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		jsp:useBean action tag 기능(*전제 조건 : member가 null인 경우)
		1. id Attribute의 value인 member가 인스턴스 이름
		   -> member.MemberInfo member = new member.MemberInfo();
		2. request.setCharacterEncoding();이 자동으로 실행
		   -> pageEncoding 사용
		3. scope="request"
		   -> request.setAttribute("member", member);
		
		jsp:useBean의 활용
		1. web browser와 web server의 jsp 간 정보 전달
		2. web server 내에서 jsp 간 정보 전달
	 -->
	 <%
	 	// java bean의 값을 설정하는 것을 class의 setter 사용
	 	member.setId("hong");
	 	member.setName("홍길동");
	 %>
	 
	 <jsp:forward page="28_useBean.jsp" />
</body>
</html>