<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Calendar today = Calendar.getInstance();

	today.set(Calendar.DATE, 1);
	today.set(Calendar.MONDAY,0);
	int first = today.get(Calendar.DAY_OF_WEEK);
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH)+1;
	int last = today.getActualMaximum(Calendar.DATE);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_diary</title>
<link rel="stylesheet" href="../css/04_diary.css">
</head>
<body>
	<h1>04_diary</h1>
	<div id="year">
		<%for(int i = 0; i<12; i++){
		today.set(year, i, 1);
		month = today.get(Calendar.MONTH)+1;
		first = today.get(Calendar.DAY_OF_WEEK);
		last = today.getActualMaximum(Calendar.DATE);		
		%>
		<div id="month">
		<!-- 월에 따라 이미지 변경 -->
		<%-- <div><img src="../fff/f<%=month %>.jpg" alt=""/></div> --%>
			<div><%=year+ "년 " +month+"월" %></div>
			<div>
				<% for(char dd : "일월화수목금토".toCharArray()) {%>
				<div><%=dd %></div>

				<%}	for (int k = 1; k<first; k++) { %>
				<div></div>
				<% } %>

				<% for(int j= 1; j<=last;j++) { %>
				<div><%=j %></div>
				<% }%>
			</div>
			
		</div>
		<% } %>
	</div>

</body>
</html>