<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>err03</title>
</head>
<body>
	<h2>err03</h2>
	<%
	int [] arr = {11, 22, 33, 44, 55};
	out.println("정상실행 : " + arr[22]);
	%>
</body>
</html>