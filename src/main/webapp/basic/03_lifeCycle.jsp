<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 디렉티브 구간 %>
<%!

	// class 03_lifeCycle_jsp {
	
	// }

	// Declaration -- 클래서 정의부

	// 멤버 변수
	int a = 10;
	String b = "아기상어";
	Date now = new Date();
	
	void meth_1() {
		System.out.println("meth_01() 실행");
	}
	
	void meth_2() {
		System.out.println("meth_02() 실행");
	}
	
	/*  직접적인 실행구문 작성 불가
	if(true) {
		System.out.println("참이지롱");

	} */
%>  


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
	width :50px;
	height : 50px;
	backgroud : #ff0;
	border : 1px solid #000; 
	}
</style>
</head>

<body>
<h2>03_lifeCycle</h2>
<%
	// scriptlet : _jspService() 메소드 정의 ::> main 과 같음
	// 실제 코드 실행된다.
	out.println("와 script 이다 1:" + a + "," + b + now + "<br>");
	int aa = 20;
	String bb = "엄마상어";
	out.println("와 script 이다 2 <br>"+aa + "," + bb + now + "<br>");
	
	class AAA {
			
	}
	out.println("와 scriptlet 이다 3 <br>");
	
	/* 메소드에서 메소드 정의 불가 */
	/* void meth_3() {
		System.out.println("meth_02() 실행");
	} */
	
	for(int i = 0; i<10; i++) {
		
%>
<%-- <div><%out.println(i); %></div> --%>
<div><%=i %></div> <!-- 값을 가진 객체를 가지고 출력시 사용 -->
<% } %>

</body>
</html>