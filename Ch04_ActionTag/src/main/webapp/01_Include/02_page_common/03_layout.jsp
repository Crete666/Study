<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1" cellpading="0" cellspacing="0">
		<tr>
			<td colspan="2">
				<jsp:include page="/01_Include/99_module/04_top.jsp" flush="false" />
			</td>
		</tr>
		<tr>
			<td width="100" valign="top">
				<jsp:include page="/01_Include/99_module/05_left.jsp" flush="false" />
			</td>
			<td width="300" valign="top">
				page 본분 내용 1
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="/01_Include/99_module/06_bottom.jsp" flush="false" />
			</td>
		</tr>
	</table>
</body>
</html>