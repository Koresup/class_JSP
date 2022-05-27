<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt</title>
</head>
<body>
<h1>fmt</h1>
<h2>숫자</h2>
<c:set var="aa" value="123456.9876"/>
${aa }<br>
<fmt:formatNumber value="${aa }"/><br>
<fmt:formatNumber var="bb" value="${aa }"/><br> <!-- bb는 변수로 할당되어 한줄 띄움 -->
${bb }<br>
<fmt:formatNumber value="${aa }" type="number"/><br>
<fmt:formatNumber value="${aa }" type="currency"/><br>
<fmt:formatNumber value="${aa }" type="currency" currencySymbol="원"/><br>
<fmt:formatNumber value="${aa }" type="percent"/><br> <!-- 소수점 확인 -->
<fmt:formatNumber value="${aa }" type="percent" groupingUsed="false"/><br>
<fmt:formatNumber value="${aa }" pattern="0,00.00"/><br>

<fmt:parseNumber value="789,135.123" pattern="0,000.000" var="cc"/><br>
${cc }<br>

<h2>날짜</h2>
<c:set var="now" value="<%=new Date() %>"/>
${now }<br
<fmt:formatDate value="${now }" type="date" dateStyle="short"/><br>
<fmt:formatDate value="${now }" type="date" dateStyle="full"/><br>
<fmt:formatDate value="${now }" type="time" timeStyle="short"/><br>
<fmt:formatDate value="${now }" type="time" timeStyle="full"/><br>
<fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="full"/><br>
<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="short"/><br>
<fmt:formatDate value="${now }" pattern="yy-MM-dd HH:mm:ss"/><br><br>
<!-- 문자=>날짜 -->
<fmt:parseDate value="2002-06-03 17:12:12" pattern="yyyy-MM-dd HH:mm:ss" var="ee"></fmt:parseDate>
${ee }


</body>
</html>