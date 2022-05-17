<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String main = "info_02";
	if(request.getParameter("main" ) != null) {
		main = request.getParameter("main");
	};
	
	String mainUri = "main_02/" + main + ".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME HOME</title>
<link rel="stylesheet" href="../css/in_home_02.css" />
</head>
<body>
	<header>
		<jsp:include page="top_02.jsp"></jsp:include>
	</header>
	<section>
		<div>
			<jsp:include page="<%=mainUri %>" />			
		</div>
			
	</section>
	<footer>
	
	</footer>
</body>
</html>