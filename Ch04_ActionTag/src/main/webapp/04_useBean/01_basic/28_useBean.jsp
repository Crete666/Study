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
		28_useBean.jsp에서 jsp:useBean action tag 처리 방법
		1. member object가 존재하지 않을 경우
		   - if (member == null){
		   		MemberInfor member = new MemberInfo();
		   		request.setAttribute("member", member);
		   }
		2. member object가 존재하는 경우
		   - else {
		     	member = request.getAttribute("member");
		     }
	 -->
	 <p><%= member.getName() %> (<%= member.getId() %>) 회원님, 안녕하세요</p>
</body>
</html>