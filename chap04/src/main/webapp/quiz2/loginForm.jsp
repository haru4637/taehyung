<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	//�̹� �α��� �� ���¶�� �޸��������� �����̷�Ʈ
    if(session.getAttribute("info")!= null){
    		response.sendRedirect("/chap04/quiz/memoView/main");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α����ϴ� ��</title>
</head>
<body>
<h3>#�α���</h3>
	ID: <input name="id" type="text" form="form1"/><br>
	PASSWORD <input name="pwd" type="password" form="form1"/><br>
	<button type = "submit" form="form1">�α���</button>
	
	<!-- id �Ӽ��� form �Ӽ��� �̿��� �������� �� �ִ� -->
	<!--id �±׿� form �Ӽ��� Ȱ���� form �±� �ۿ� �ִ� ��ҵ鵵 �� ���� �Ҽ����� ������ �� �ִ�  -->
	<form id="form1" action="/chap04/quiz2/login" method="POST" ></form>
	
	
</body>
</html>