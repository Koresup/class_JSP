<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>sub1.jsp 입니다.</h2>
<%
	// int a = 2000; // a 변수가 중복
	int b = 2345;
%>
sub1:<%=request.getParameter("pid") %>, 
<%=request.getParameter("marriage") %>,
<%=a %>, <%= b %>