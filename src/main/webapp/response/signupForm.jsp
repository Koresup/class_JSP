<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signupFrom</title>
</head>
<body>
	<h1>signupFrom</h1>
	<form action="signupReg.jsp">
		<table border="">
			<!-- <tr>
				<td>기본정보</td>
				<td>이름
					<input type="text" name="pname" value=""/>
				</td>
				<td>주민번호
					<input type="text" name="socialNum" value=""/>
				</td>
			</tr> -->
			<tr>
				<td>회원정보</td>
				<td colspan="2" align="center">
					<input type="radio" name="info" value="under20"/>미성년
					<input type="radio" name="info" value="over20"/>성인
					<input type="radio" name="info" value="foreign"/>외국인
				</td>
				
			</tr>
			<tr>
				<td>미성년자</td>
				<td>이름
					<input type="text" name="name_child"/>
				</td>
				<td>부모
					<input type="text" name="parent_child"/>
				</td>
				<td>주민번호
					<input type="text" name="ssn_child"/>
				</td>
				<td>연락처
					<input type="text" name="phone_child" />
				</td>
				<td>학교
					<input type="text" name="school_child" />
				</td>
			</tr>
			<tr>
				<td>성인</td>
				<<td>이름
					<input type="text" name="name_adult" />
				</td>
				<td>연락처
					<input type="text" name="phone_adult" />
				</td>
				<td>회사
					<input type="text" name="company_adult" />
				</td>
			</tr>
			<tr>
				<td>외국인</td>
				<td>이름
					<input type="text" name="name" />
				</td>
				<td>연락처
					<input type="text" name="phone" />
				</td>
				<td>국적
					<input type="text" name="country"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="회원가입" />
				</td>
			</tr>
			
		</table>
	</form>
</body>
</html>