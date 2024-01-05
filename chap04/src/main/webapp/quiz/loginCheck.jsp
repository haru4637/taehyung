<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>



<%

	//이렇게 JSP를 사용하면 Servlet과 다를 바가 없다
	//request.getRequestDispatcher("/forward/page1.jsp").forward(request, response);
%>

<jsp:forward page="/quiz/login.jsp"/>