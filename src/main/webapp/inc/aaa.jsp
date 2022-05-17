<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%! 
		int a= 10;
	%>
	<%! 
		int b= 20;
	%>
	<h2>aaa.jsp 입니다.</h2>
	<%=request.getParameter("pid") %>,
	<%=request.getParameter("marriage") %><br>
	<%=a %>, <%=b %>
	pname = <%=request.getParameter("pname") %><br>
	age = <%=request.getParameter("age") %><br>
	kor = <%=request.getParameter("kor") %><br>
	eng = <%=request.getParameter("eng") %><br>
	mat = <%=request.getParameter("mat") %><br>
	mem1 = <%=request.getAttribute("mem1") %><br>
	mem2 = <%=request.getAttribute("mem2") %>