<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>

<cc:set var="tot" value="${param.kor + param.eng + param.mat}"/>
<cc:set var="avg" value="${tot/3}"/>
<cc:choose>
		<cc:when test="${avg >= 90 }">
			<cc:set var="result" value="수"/>
		</cc:when>
		<cc:when test="${avg >= 80 }">
			<cc:set var="result" value="우"/>
		</cc:when>
		<cc:when test="${avg >= 70 }">
			<cc:set var="result" value="미"/>
		</cc:when>
		<cc:when test="${avg >= 60 }">
			<cc:set var="result" value="양"/>
		</cc:when>
		<cc:otherwise>
			<cc:set var="result" value="가"/>
		</cc:otherwise>
	</cc:choose>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_exam</title>
</head>
<body>
	<h1>02_exam</h1>
	
	<table border="">
		<tr>
			<td>아이디</td>
			<td>${param.pid}</td>
		</tr>
		<tr>
			<td>한국어</td>
			<td>${param.kor}</td>
		</tr>
		<tr>
			<td>영어</td>
			<td>${param.eng}</td>
		</tr>
		<tr>
			<td>수학</td>
			<td>${param.mat}</td>
		</tr>
		<tr>
			<td>총점</td>
			<td>${param.kor + param.eng + param.mat}</td>
		</tr>
		<tr>
			<td>평균</td>
			<td>${avg}</td>
		</tr>
		<tr>
			<td>등급</td>
			<td>${result }</td>
		</tr>
	</table>

	-----------------<br>
	학생이름 : ${param.pid}<br>
	한국어 : ${param.kor}점<br>
	영어 : ${param.eng}점<br>
	수학 : ${param.mat}점<br>
	<br>
	-----------------<br>

	총점 : ${tot}점<br>
	평균 : ${avg}점<br>
	result : ${result } <br>
	<br>
	-----------------<br>

		
	
</body>
</html>