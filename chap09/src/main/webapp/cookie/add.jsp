<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// ��Ű�� �� �������� �����ϴ� ���̱� ������ ���ڿ��� ���� �����ϴ�
	Cookie cookie = new Cookie("age", "21-50"); // 1. �⺻ ��Ű (������ ����ñ��� ������)

	Cookie cookie2 = new Cookie("fav", "drama"); // 2. ���� ������ ��Ű
	
	cookie2.setMaxAge(600); // 10�� (���� = ��)
	cookie2.setHttpOnly(true); // �ڹٽ�ũ��Ʈ���� �� ��Ű�� ������� ���ϵ��� �Ѵ� (���Ȼ� �ʿ�)
	cookie2.setPath("/chap09"); // �ش� ��Ű�� ����Ǵ� ������ ����
	cookie2.setValue("comedy"); // ���� �����ϴ� ���� �����ϴ� (��Ű �̸��� ���� �Ұ�)

	// ��Ű�� ���信 �Ǿ� ������ Ŭ���̾�Ʈ���� �ݿ��ȴ�
	response.addCookie(cookie);
	response.addCookie(cookie2);
	
	response.sendRedirect(request.getContextPath() + "/cookie/index.jsp");	
%>