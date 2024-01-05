<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<%@ page import = "java.util.Date" %> <!-- jsp���� ����Ʈ �ϴ� ��� -->
</head>
<body>
	
	<h3>#Http�� ������ �������� �ʴ´� (�񿬰Ἲ)</h3>

	<ul>
		<li>HTTP�� ������ �ϰ� ���� Ŭ���̾�Ʈ���� ������ ���������</li>
		<li>������ ��ġ�� ���ٸ� �ش� Ŭ���̾�Ʈ�� ������ ������ Ŭ���̾�Ʈ�� ������
			Ŭ���̾�Ʈ���� ������ �� ����</li>
		
	</ul>
	
	<h3># Http Session �߱� ����</h3>
	
	<ol>
		<li>Ŭ���̾�Ʈ�� ���ʷ� �������� �����ϸ� ������ �ش� Ŭ���̾�Ʈ���� ���� ID�� �߱��Ѵ�</li>
		<li>�߱޹��� ����ID�� Ŭ���̾�Ʈ���� �� �������� ����ȴ�
			(�ٸ� �� �������� �����ϸ� ���ο� ���� ID�� �߱޹޴´�)
		</li>
		
		<li>���� �ش� Ŭ���̾�Ʈ�� �ش� ������ ��û�� ���������� ����ID�� 
			��û�� �Բ� �Ǿ� �����ϰ� �ȴ�</li>
		<li>������ �Ƿ��� ����ID�� Ŭ���̾�Ʈ�� ������ �� �ִ�</li>
		<li>����ID�� ���� �繰�� ���谰�� ������ �ϱ⵵ �Ѵ�
			���� ��Ʈ����Ʈ�� ������ �� �ش� ���� ID�� ���� ��Ʈ����Ʈ�� �����Ͽ� ����Ѵ�.</li>
		<li>������ �����Ǵ� ������ ���ǰ�ü�� �����ȴ� </li>		 
		<li>���� ��ü�� �ʹ� ���� ���� �����͸� �߰��ϴ� ����
			������ ������ ���Ͻ�ų �� �����Ƿ� �����ؾ� �Ѵ� </li>
		<li>���� ID�� �⺻������ ������� �� �������� ����� �� �Բ� ��������� �����Ǿ� �ִ� </li>
		<li>���� ��Ʈ����Ʈ�� �����ð� ���� ��û�� ���������� ��������� �����Ǿ� �ִ� </li>
	</ol>
	
	<!--  sessionAttribute ={
	
		59DA602B856E9B698550BF1FE9084DA :{
			'food' : 'orange',
			'age' : 20
			
		},
		EA123354289418947182937189231211:{
			'food' : 'orange',
		}
	}  --> 
	
	
	<%
	//��Ȱ�� �� ������ ����Ǵ� �ð��� ���� (���� = ��)
	int interval = 5;
	session.setMaxInactiveInterval(interval);
	%>
	
	<h3># ���� ���� ����</h3>
	
	<ul>
		<li>SESSION ID: <%=session.getId() %></li>
		<li>������ ������ �ð�: <%= new Date(session.getCreationTime()) %></li> <!--  longtype = ���н�Ÿ���� ���� -->
		<li>���� �ֱٿ� �����ߴ� �ð� <%=new Date(session.getLastAccessedTime()) %></li>
		<li>��Ȱ�� �� ������ �����Ű�� �ð�: <%=session.getMaxInactiveInterval() %>��</li>
	</ul>
	
	<button onclick="location.href='/chap04/session/closeSession.jsp';">���� �����Ű��</button>

</body>
</html>