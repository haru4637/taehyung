<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz</title>
</head>
<body>
	<h3># �䱸����</h3>
	
	<ul>
		<li>���̵�� ��й�ȣ�� �Է��ϰ� �α��� ��ư�� ���� �α����� �� �� �ִ� </li>
		<li>ȸ�������� ���̵�� ��й�ȣ�� �Է��ϸ� �Ϸ�ȴ� 
			()��� ���̵� �ߺ��� üũ�ؾ� �ϰ�, ���Ե� ������ application ������ ����Ѵ�)</li>
	
		<li>�α��ο� ������ ����� ������ �����Ǵ� ���� �α����� ����ؼ� �����Ǿ�� �Ѵ�</li>	
		<li>�α��� �� ����� ���ο� �޸� ����� �� �ְ�, ������ ����ߴ� �޸�鵵 �� �� �ִ�</li>
		<li>������ ����� ���� �� ��� ȸ������ �� �޸� ������� ������� </li>
		<li>������ ������ ������ ������ ��� ������ quiz���� �ؿ� �����
			(������ ����ϰ� �ʹٸ� URL�� quiz�� ���� �� )</li>	
	</ul>
	
	
	<form action="/chap04/quiz/index"  method="GET">
		<input type ="text" name="login_id" value="�α���ID"/>
		<input type ="text" name="password" value="��й�ȣ"/>
		<button id="loginBtn" onclick="location.href='/chap04/quiz/addMember.jsp';">ȸ������</button>
		<input type="submit" value="�α���"/> 
	</form>
	
	
	<script>
	
	const loginBtn = document.getElementById("loginBtn");
	
	
	loginBtn.addEventListener('click',(e)=>{
		
	
		location.href = '/chap04/quiz/add.jsp?id='+applicationInput.value+'&scope=application';
	
});
	</script>
		
</body>
</html>