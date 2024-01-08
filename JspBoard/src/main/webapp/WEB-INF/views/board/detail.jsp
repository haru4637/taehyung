<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>조회 잘됨</h3>
 <!--  ${detail} -->
	글 제목: <input type="text" value="${detail.board_title }" readonly/>
	글쓴사람: <input type="text" value="${detail.board_writer }" readonly/>
	조회수: ${detail.view_count} 작성일: ${detail.writer_date}<br>

	<textarea rows="10" cols="30" readonly>${detail.board_content} </textarea><br>
</body>
</html>