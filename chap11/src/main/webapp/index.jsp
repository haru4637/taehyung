<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>File Include</title>
</head>
<body>

	<h3># include ����� ����� �� ���� �����ϱ�</h3>
	
	<ol>
		<li>
			JSP include : ������ó�� request�� response�� �ٸ� jsp�� �״�� �����Ͽ�
		 	ó���� ������ �Ŀ� ����� ������ �ٽ� ���ƿ��� ���.
		 	�ٸ� �������� ��� ���ٰ� �ٽ� ���ƿ��� ����̱� ������ include�ϴ� ������������
		 	pageScope�� ���� ����� �� ����. 
		 </li>
		<li>
			File include:
			�ش� ������ �������ϱ� ���� ��°�� ���� �������� �����ع����� ���.
			�ٸ� ���ϰ� �ϳ��� ������ �� �����ϵǱ� ������ pageScope�� ��ȿ�ϴ�.
		</li>
	</ol>
	
	<a href="./include1/index.jsp">JSP include</a>
	<a href="./include2/index.jsp">File include</a>
	
</body>
</html>