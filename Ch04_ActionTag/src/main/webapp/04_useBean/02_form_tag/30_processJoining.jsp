<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!--
1. jsp:useBean
   1) member.MemberInfo memberInfo = new member.MemberInfo();
   2) scope="request"인 경우
      -> request.setAttribute("memberInfo", memberInfo);
      scope="session"인 경우
      -> session.setAttribute("memberInfo", memberInfo);
      scope="application"인 경우
-->
<jsp:useBean id="memberInfo" class="member.MemberInfo" scope="request"/>
<!--
3. jsp:setProperty에서 property vlaue를 "*"로 지정한 경우
   - web browser form tag에서 보낸 key 이름과 MemberInfo class의 field명이 동일한 경우
     자동으로 해당 setter method를 호출하여 값을 집어넣음
   - 예를 들면, form tag에서 id, name, email을 server로 전송하면
     1) String id = request.getParameter("id"); -> memberInfo.setId(id);
     2) String name = request.getParameter("name"); -> memberInfo.setName(name);
     3) String email = request.getParameter("email"); -> memberInfo.setEmail(email);

   * 참고사항 : web browser에서 정수, 실수 등 숫자 데이터가 넘어오고, class에서 해당 field의
              data type이 int, double 등으로 선언되어 있으면 자동으로 데이터 형변환 시켜줌
-->
<jsp:setProperty name="memberInfo" property="*" />
<!--
2. jsp:setProperty
   1) memberInfo.setPassword("memberInfo.getId()");
-->
<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>"/>
<!--
4. useBean 단점 : jsp 내에서만 사용 가능 (servlet java code 내에서는 사용 불가능)
   - jsp medel2 (MVC : Model - View - Controller)에서 controller 부분이
     servlet programming을  하는데, useBean을 사용할 수 없는 단점이 발생하여,
     실제로는 거의 사용 안함
   - request, session, application 기본 객체의 setAttribute/getAttribute 사용
   - spring에서는 useBean과 같은 개념의 library를 만들어서 servlet 내에서도
     사용 가능
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리</title>
</head>
<body>
	<table width="400" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty name="memberInfo" property="id" /></td>
			<td>암호</td>
			<td><jsp:getProperty name="memberInfo" property="password" /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty name="memberInfo" property="name" /></td>
			<td>이메일</td>
			<td><jsp:getProperty name="memberInfo" property="email" /></td>
		</tr>
	</table>
</body>
</html>