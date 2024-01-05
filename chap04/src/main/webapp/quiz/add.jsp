<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
//String uri = request.getRequestURI();

String scope = request.getParameter("scope");
if (scope.endsWith("application")) {
	application.setAttribute("login_id", request.getParameter("login_id"));
	application.setAttribute("password", request.getParameter("password"));
	if (application.getAttribute("login_id").equals(request.getParameter("login_id"))) {
		request.getRequestDispatcher("quiz/login.jsp").forward(request, response);
	}
} else {

	request.getRequestDispatcher("/quiz/login.jsp").forward(request, response);
}
%>