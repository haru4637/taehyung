<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// ���������� ��Ű �߰��ϱ�
	Cookie cookie = new Cookie("nmpm", "1");

	cookie.setMaxAge(30);
	cookie.setHttpOnly(true);
	// HttpOnly�� �ڹٽ�ũ��Ʈ������ ����� �� ���� �Ѵ�
	
	response.addCookie(cookie);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>blank</title>
</head>
<body>

	<script>
		window.close();
	</script>

</body>
</html>