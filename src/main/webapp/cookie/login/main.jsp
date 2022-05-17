<%@page import="jdbc_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 메인</title>
</head>
<body>
	<h1>메인 페이지입니다.</h1>
	<%
	String perName = null;
	
	if (perName != null) {
		
	}%>
	<%=perName %>


	<form action="logReg.jsp">
		아이디<input type="text" name="pid" /> 비번<input type="text" name="pw" />
		<input type="submit" value="로그인" />
	</form>


</body>
</html>