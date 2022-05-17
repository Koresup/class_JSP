<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String info = request.getParameter("info");

	/* String name = request.getParameter("name"); */
			
	switch(info) {
		case "under20":
			break;
		case "over20":
			break;
		case "foreign":
			break;
	}

	response.sendRedirect( "signup/" + info);
%>