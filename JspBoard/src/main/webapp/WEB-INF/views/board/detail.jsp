<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>��ȸ �ߵ�</h3>
 <!--  ${detail} -->
	�� ����: <input type="text" value="${detail.board_title }" readonly/>
	�۾����: <input type="text" value="${detail.board_writer }" readonly/>
	��ȸ��: ${detail.view_count} �ۼ���: ${detail.writer_date}<br>

	<textarea rows="10" cols="30" readonly>${detail.board_content} </textarea><br>
</body>
</html>