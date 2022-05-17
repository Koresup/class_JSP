<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="../excep/excep02.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>err01</title>
</head>
<body>
	<h2>err01</h2>
	<%
	
	int a = 10 / 0;
	out.println("정상실행 : " + a);
	
	
	%>
</body>
</html>