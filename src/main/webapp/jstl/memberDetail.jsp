<%@page import="jdbc_p.MemberDAO"%>
<%@page import="jdbc_p.MemberDTO"%>
<%@page import="jdbc_p.DBCP_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDetail</title>
</head>
<body>
<h1>memberDetail</h1>
<!-- escape ""에 대한 구분을 짓기 위해 \를 사용 -->
<c:set var="dto" value="<%=new MemberDAO().detail_02(request.getParameter(\"pid\")) %>"/>
<table border="">
	<tr>
		<td>아이디</td>
		<td>${dto.pid }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${dto.pname }</td>
	</tr>
	<tr>
		<td>나이</td>
		<td>${dto.age }</td>
	</tr>
	<tr>
		<td>혼인여부</td>
		<td>${dto.marriage }</td>
	</tr>
	<tr>
		<td>가입일</td>
		<td><fmt:formatDate value="${dto.reg_date }" pattern="yy-MM-dd HH:mm"/></td>
	</tr>
</table>


</body>
</html>