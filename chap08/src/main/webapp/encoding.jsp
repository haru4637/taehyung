<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ѱ� ����ϱ�</title>
</head>
<body>
	
	<h3># JSP�� �������� ���ڵ� ����</h3>
	
	<dl>
		<dt>1. meta�±��� charset</dt>
			<dd>
				�� �������� �аԵǴ� Ŭ���̾�Ʈ�� �� �������� 
				�� �������� �ؼ��� �� ����� charset ����
			</dd>
		<dt>2. contentType�� charset</dt>
			<dd>
				�� �������� �����ϴ� ������� ���� �� charset ����
			</dd>
		<dt>3. pageEncodeing�� charset</dt>
			<dd>
				.jsp�� �ۼ��� �ڵ带 .java�� ��ȯ�� ���� charset
			</dd>
		<dt>4. ���� ���Ͽ��� ����ϰ� �ִ� charset</dt>
			<dd>
				�츮�� Ctrl + S�� ���� ��Ŭ������ ���� �ϵ��ũ�� ������ �� ����ϴ� charset
				���� ���� ��Ŭ�� �� properties���� Ȯ���� �� �ִ�
			</dd>
		<dt>5. server.xml�� URIEncoding</dt>
		<dd>GET ��� �Ķ���Ͱ� �ٽ� ���ڷ� ������ �� ����� charset�� ����</dd>
		<dt>6. request ��ü�� CharacterEncoding</dt>
		<dd>POST ��� �Ķ���� ���� �ؼ��� �� ����� charset�� ����</dd>
	</dl>
	
	<h3># GET ��� �Ķ���ͷ� �ѱ��� ������ ��</h3>
	<ol>
		<li>
			GET ��� �Ķ���� ���� URL�� ���ԵǾ� ���޵ǰ�
			�� URL�� �ؼ��� ������ ����Ѵ�.
		</li>
		<li>URL�� �ؼ��� ���� ���α׷��� ����ϱ� ������ ������ ������ �ٲ�� �Ѵ�</li>
		<li>server.xml�� Connector�� URIEncoding = "EUC-KR"�� �߰�</li>
	</ol>
	
		GET: 
		<input type="text" name="animal" value="ȣ����" form="form1">
		<input type="submit" value="������" form="form1">
		<form action="<%=request.getContextPath()%>/test" id="form1"  method="GET"></form>
		
	<h3># POST ��� �Ķ���ͷ� �ѱ��� ������ ��</h3>
		<ol>
			<li>
				POST ��� �Ķ���� ���� ��û��ü ���ο� �Ƿ��� ������ �����ϹǷ�
				URIEncoding�� ������ ���� �ʴ´�
			</li>
			<li>
				request.setCharacterEncoding("EUC-KR")�� ��û ��ü�� ���ڵ� ����� �����Ͽ�
				�ذ��� �� �ִ�
			</li>
		</ol>
		
		<input type="text" name="animal" value="�ź���" form="form2">
		<input type="submit" value="������" form="form2">
		<form action="<%=request.getContextPath()%>/test" id="form2"  method="POST"></form>

</body>
</html>