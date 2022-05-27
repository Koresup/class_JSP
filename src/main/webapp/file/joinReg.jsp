<%@page import="jdbc_p.MemberDTO"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="jdbc_p.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		
<%
	// request.setCharacterEncoding("UTF-8");
	String ff = request.getRealPath("zzz");
	ff= "/Users/minsookim/Desktop/Green/JSP_Lee/jspProj/src/main/webapp/zzz";
	
	MultipartRequest mm = new MultipartRequest(
			request,
			ff,
			10*1024*1024,
			"UTF-8",
			new DefaultFileRenamePolicy()
			);
	
	String msg = "사진파일이 아니에용";
	String goUrl = "joinForm.jsp";
	
	if(mm.getContentType("pic") != null &&
			Pattern.matches("images/.*", mm.getContentType("pic"))) {
		msg = "가입되었습니다";
		goUrl = "../index.jsp";
		
		MemberDTO dto = new MemberDTO();
		dto.setPid(mm.getParameter("pid"));
		dto.setPname(mm.getParameter("pname"));
		dto.setPw(mm.getParameter("pw"));
		dto.setAge(Integer.parseInt(mm.getParameter("age")));
		dto.setMarriage(Boolean.parseBoolean(mm.getParameter("marriage")));
		dto.setPic(mm.getParameter("pic"));
		dto.setMyff(mm.getParameter("myff"));
		
		new MemberDAO().insert_01(dto);
		
	} else {
		if(mm.getFile("pic") != null) {
			mm.getFile("pic").delete();
		}
		if(mm.getFile("myff") !=null) {
			mm.getFile("myff").delete();
		}
	}
%>


<jsp:useBean id="join" class="jdbc_p.MemberDTO"/>
<jsp:setProperty property="*" name="join"/>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
	<h1>회원정보</h1>
	
	
	<table border="">
		<tr>
			<td>아이디</td>
			<td><%=request.getParameter("pid") %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("pname") %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=request.getParameter("pname") %></td>
		</tr>
		<tr>
			<td>혼인여부</td>
			<td></td>
		</tr>
		<tr>
			<td>사진</td>
			<td>이력서 파일</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
	</table>
	
	<script>
		alert("가입되었습니다");
		location.href="../";
	</script>
</body>
</html>