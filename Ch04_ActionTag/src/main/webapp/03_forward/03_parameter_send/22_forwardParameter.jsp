<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 : <input type="text" name="id" id="id"> <br>
	취미 :
	<select name="hobby" id="hobby">
		<option value="tv">TV보기</option>
		<option value="game">게임하기</option>
		<option value="tennis">테니스하기</option>
	</select>
	<script>
		var id = document.getElementById("id").value;
		var hobby = document.getElementById("hobby")[0];
	</script>
	
	<jsp:forward page="23_forwarded.jsp">
		<jsp:param value="id" name="id" />
		<jsp:param value="hobby" name="hobby" />
	</jsp:forward>
</body>
</html>