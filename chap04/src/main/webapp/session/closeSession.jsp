<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	session.invalidate(); //���� ��ø����Ű��
	
	//redirect = �ܺ��ּ� ���
	response.sendRedirect("/chap04/attribute/index.jsp");
%>