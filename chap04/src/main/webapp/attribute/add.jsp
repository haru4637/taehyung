<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%
    	//String uri = request.getRequestURI();
    
    	String scope = request.getParameter("scope");
    	if(scope.endsWith("application")){
    		application.setAttribute("food",request.getParameter("food"));
    	}else if(scope.endsWith("session")){ //세션은 웹브라우저를 껐다 켜면 사라진다
    		session.setAttribute("food",request.getParameter("food"));
    	}
    	else if(scope.endsWith("request")){
    		request.setAttribute("food",request.getParameter("food"));
    	}
    	else if(scope.endsWith("page")){
    		pageContext.setAttribute("food",pageContext.getAttribute("food"));
    	}
    	request.getRequestDispatcher("/attribute/index.jsp").forward(request,response);
    %>