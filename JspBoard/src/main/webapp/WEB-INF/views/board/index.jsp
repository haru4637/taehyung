<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
</head>
<body>
	<h1>Board List!</h1>
	
	<table  border="3">
		<tr>
			<th>No</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Timestamp</th>
			<th>View</th>
		</tr>
		<c:forEach items="${boards}" var="board">
		<tr>
		<td>${board.board_id}</td>
		<td><a href="./detail?board_id=${board.board_id}"> ${board.board_title}</a></td>
		<td>${board.board_writer}</td>
		<td>${board.writer_date}</td>
		<td>${board.view_count}</td>
		</tr>
		</c:forEach>
	</table>
	
	
	<button id="writeBtn">�۾���</button>
	
	<c:url value="/resources/board/js/index.js"  var="indexJS"/>
	<c:url value="./write" var="writePageURL"/>
	
	<script>
		const writePageURL = '${writePageURL}';
		console.log(writePageURL);
	</script>
	<script src="${indexJS}"></script>

</body>
</html>