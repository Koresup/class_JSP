<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
	<h1>foreach</h1>
	<%
	String[] arr = { "정우성", "정좌성", "정남성", "정중성", "북두신성", "정성조" };
	%>
	<c:forEach var="i" begin="3" end="20" step="2" varStatus="no">
	${i } - ${no.index } <br>
	</c:forEach>
	----------------------<br>
	<c:forEach var="tt" items="<%=arr%>" varStatus="no">
		${no.index } - ${tt }<br>
	</c:forEach>
	----------------------<br>
	 11, 45, 32, 67, 88, 93, 25, 89, 23의 합<br>
	<%
	int[] arr1 = { 11, 45, 32, 67, 88, 93, 25, 89, 23 };
	%>
	<c:set var="sum" value="0" />
	<c:forEach var="ss" items="<%=arr1%>" varStatus="no">
		<%-- ${sum.index } - ${ss }<br> --%>
		<c:set var="sum" value="${sum+ss }" />
	</c:forEach>
	합계 : ${sum } <br>
	<c:set var="sum" value="0"/>
	<c:forEach var="ss" items="<%=arr1 %>" varStatus="no">
		<c:if test="${ss%2 == 0}">
		<c:set var="sum" value="${sum + ss }"/>
	</c:if>
	</c:forEach>
	2의 배수 합계 : ${sum }<br>
	----------------------<br>
	<h2>forTokens</h2>
	<c:forTokens items="현빈,원빈,,,,투빈,골빈,자바빈,장희빈.젤리빈_커피빈,허아빈" 
	delims=",._" var="tt" varStatus="no">
	${no.index } - ${tt }<br>
	</c:forTokens>
	----------------------<br>
	<c:forTokens items="11, 45, 32, 67, 88, 93, 25, 89, 23" 
	delims=", " var="tt" varStatus="no">
	${no.index } - ${tt }, ${tt%2 }<br>
	</c:forTokens>
	----------------------<br>
	<h2>Question</h2>
	a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88<br>
	a,b : 반<br>
	반별 최고 점수의 학생이름을 출력하시오.<br>
	<c:set var="aa" value=""/>
	<c:set var="bb" value=""/>
	<c:set var="aaVV" value="0"/>
	<c:set var="bbVV" value="0"/>
	
	<c:forTokens items="a_강대준_78,b_김강규_98,a_김민수_72,b_김승화_65,a_김지현_94,b_김진솔_88" 
	delims="," var="tt">
	${no.index } - ${tt }<br>
	<%-- <c:choose>
		<c:if test="${tt%2 ==0 }">
			<c:set var="a" value="${ }"/>
		</c:if>
		<c:if test="${tt%2 !=0 }">
			<c:set var="b" value=""/>
		</c:if>
	</c:choose> --%>
	>>>> ${tt }<br>
	<c:set var="class" value=""/>
	<c:set var="score" value="0"/>
	<c:set var="name" value=""/>
	
	<c:forTokens items="${tt }" delims="_" var="dd" varStatus="no">
		
		<c:choose>
			<c:when test="${no.index==0 }">
				<c:set var="class" value="${dd }"/>
			</c:when>
			<c:when test="${no.index==1 }">
				<c:set var="name" value="${dd }"/>
			</c:when>
			<c:when test="${no.index==2 }">
				<c:set var="score" value="${dd }"/>
			</c:when>
		</c:choose>
	</c:forTokens>
	<c:choose>
		<c:when test="${class=='a' && aaVV < score }">
			<c:set var="aa" value="${name }"/>
			<c:set var="aaVV" value="${score }"/>
		</c:when>
		<c:when test="${class=='b' && bbVV < score }">
			<c:set var="bb" value="${name }"/>
			<c:set var="bbVV" value="${score }"/>
		</c:when>
		
	</c:choose>
	</c:forTokens>
	<br>
	${aa } : ${aaVV }, ${aa } : ${bbVV }
	
	


</body>
</html>