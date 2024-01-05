<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	session.invalidate(); //세션 즉시만료시키기
	
	//redirect = 외부주소 사용
	response.sendRedirect("/chap04/attribute/index.jsp");
%>