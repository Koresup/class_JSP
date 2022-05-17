<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
caption {
	text-align: left;
}

table {
	width: 700px;
	height: auto;
	border: solid 1px black;
	margin: 50px auto;
	border-spacing: 0px;
	border-collapse: collapse;
}

th {
	height: 30px;
	margin: 30px auto;
	border-top: solid 3px black;
	border-bottom: solid 2px black;
	background: #eeeeee;
}

td {
	height: 20px;
	border-bottom: dotted;
	text-align: center;
}

th.no {
	width: 50px;
}

th.title {
	width: 200px;
}

th.name {
	width: 200px;
}

th.date {
	width: 150px;
}

th.count {
	width: auto;
}

td.title {
	text-align: left !important;
}
div#page {
	widows: 700px;
	margin: 0px auto;
}
div#page div {
	widows: 100px;
	margin: 0px auto;
}
</style>

<%
	int start = (int) request.getAttribute("start");
	int end = (int) request.getAttribute("end");
	
%>

<table>
	<caption>공지사항</caption>
	<tr>
		<th class="no">번호</th>
		<th class="title">제목</th>
		<th class="name">작성자</th>
		<th class="date">날짜</th>
		<th class="count">조회수</th>
	</tr>
	
	<%for(int i = start; i<end; i++){ %>
		<tr>
			<td class="no"><%=get(i).getNo() %></td>
			<td class="title"><%=get(i).getTitle() %></td>
			<td class="name"><%=get(i).getName() %></td>
			<td class="date"><%=get(i).getDate() %></td>
			<td class="count"><%=get(i).getCount() %></td>
		</tr>
	<%} %>
	<!-- <tr>
		<td class="no">1</td>
		<td class="title">가나다</td>
		<td class="name">ㄱㅁㅅ</td>
		<td class="date">1990-05-13</td>
		<td class="count">123</td>
	</tr>
	<tr>
		<td class="no">2</td>
		<td class="title">라마바</td>
		<td class="name">ㅈㄱㅈ</td>
		<td class="date">1990-05-14</td>
		<td class="count">456</td>
	</tr>
	<tr>
		<td class="no">3</td>
		<td class="title">사아자</td>
		<td class="name">ㄱㅈㅅ</td>
		<td class="date">1990-05-15</td>
		<td class="count">789</td>
	</tr>
	<tr>
		<td class="no">4</td>
		<td class="title">차타카</td>
		<td class="name">ㄱㅎㅇ</td>
		<td class="date">1990-05-16</td>
		<td class="count">123</td>
	</tr> -->
</table>
<div id="page">
	<div>
		<%for(int i = start; i<=end; i++){ %>
			<a href="?pageNo=<%=i %>"><%=i %></a>
		<%} %>
	</div>
</div>