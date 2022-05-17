<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int start = (int) request.getAttribute("start");
int end = (int) request.getAttribute("end");
%>

<div class="big">
	<% for (int i = start; i <= end; i++) {%>
	<img alt="" src="../fff/f<%=i%>.jpg">
	<!-- 경로는 url을 보고 하자 -->
	<%}%>
</div>
<div>
	<% for (int i = 1; i <= 4; i++) {%>
	<a href="?pageNo=<%=i %>"><%=i %></a> <!-- 내 페이지 들어갈땐 물음표 -->
	<%}%>
</div>