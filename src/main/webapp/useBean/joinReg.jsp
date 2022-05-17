<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="join" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="*" name="join"/>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<%=join %><br>
	
	<% int no = new MemberDAO().insert(join); %>
	
	no : <%= no %>
	
	<script>
		alert("가입되었습니다");
		location.href="../";
	</script>
</body>
</html>