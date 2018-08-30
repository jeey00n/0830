<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 보기</title>
</head>
<body>
	<!-- rules는 가로줄이나 세로줄 중 한 쪽으로만 긋고 싶을 때 쓴다. border는 표 형식으로 모든 방향 줄을 그을 때 사용한다. -->
	<table rules="rows" width="700" align="center">
		<tr>
			<th width="50">번호</th>
			<th width="400">제목</th>
			<th width="100">작성자</th>
			<th width="100">작성일</th>
			<th width="50">조회수</th>
		</tr>
		<c:forEach var="board" items="${list}">
			<tr>
				<td align="center">${board.num}</td>
				<td align="center"><a href="boarddetail.jsp?num=${board.num}">${board.title}</a></td>
				<td align="center">${board.nickname}</td>
				<td align="center">${board.regdate}</td>
				<td align="center">${board.readcnt}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>