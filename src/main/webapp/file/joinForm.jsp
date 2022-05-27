<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>
</head>
<body>
	<h1>joinForm</h1>
	회원가입을 구현하시오.<br>
	이미지와 이력서를 받아 업로드 하시오.<br>
	이미지 파일이 아닌 경우 업로드 파일 삭제 및 회원 가입 페이지 돌아오기.<br>
	필드명 이미지 : pic / 이력서 : myff<br><br>
	
	
	<form action="joinReg.jsp" method="post"
					enctype="multipart/form-data">
		<table border="">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="pid" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="pname" /></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input type="text" name="pw" /></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td>결혼</td>
				<td>
					<input type="radio" name="marriage" value="true" />예
					<input type="radio" name="marriage" value="false" />아니오
				</td>
			</tr>
			<tr>
				<td>사진</td>
				<td><input type="file" name="upff1" /></td>
			</tr>
			<tr>
				<td>이력서</td>
				<td><input type="file" name="upff2" /></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="가입" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>