<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mm1" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="pid" param="pid" name="mm1"/>
<jsp:setProperty property="age" param="age" name="mm1"/>
<jsp:setProperty property="marriage" param="marriage" name="mm1"/>
<%-- <jsp:setProperty property="tel" param="tel" name="mm1"/> --%>
<!-- setter 존재 필수 -->

<!-- scope를 사용 안하면 page로 들어가는 거다~~~ -->
<jsp:useBean id="mm2" class="jdbc_p.MemberDTO" scope="request"/>
<jsp:setProperty property="pid" param="pid" name="mm2"/>

<jsp:useBean id="mm3" class="jdbc_p.MemberDTO" scope="session"/>
<jsp:setProperty property="pid" param="pid" name="mm3"/>
<jsp:setProperty property="age" param="29" name="mm3"/>

<jsp:useBean id="mm4" class="jdbc_p.MemberDTO" scope="application"/>
<jsp:setProperty property="pid" param="pid" name="mm4"/>
<jsp:setProperty property="marriage" param="false" name="mm4"/>

<jsp:useBean id="mm5" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="*" name="mm5"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bean</title>
</head>
<body>
	<h1>bean</h1>
	mm1 --------------<br>
	<%=mm1 %><br>
	request : <%=request.getAttribute("mm1") %><br><br>
	mm2 --------------<br>
	<%=mm2 %><br>
	request : <%=request.getAttribute("mm2") %><br><br>
	mm3 --------------<br>
	<%=mm3 %><br>
	session : <%=request.getAttribute("mm3") %><br><br>
	mm4 --------------<br>
	<%=mm4 %><br>
	application : <%=request.getAttribute("mm4") %><br><br>
	mm5 --------------<br>
	<%=mm5 %><br>
	application : <%=request.getAttribute("mm5") %><br><br>
</body>
</html>