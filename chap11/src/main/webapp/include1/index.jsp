<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%-- jsp:include�� forwardó�� webapp���� ��θ� ����ؾ� �Ѵ�  --%>
<jsp:include page="./top.jsp"/>


    <h1>Index.jsp</h1>
    <p><!-- �η� �ڵ��ϼ�: Lorem + Ctrl+E -->
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Quibusdam perferendis numquam aliquid quasi aperiam consequuntur
    commodi consequatur sed iure repellat officia optio incidunt quidem
    accusantium soluta sapiente cumque deserunt nostrum?
    </p>
    <p>�ڹٽ�ũ��Ʈ�� Ŭ���̾�Ʈ���� �۵��ϴ� ����̱� ������ 3������ ������ ���� �ʴ´�...</p>

	<p>
		����� �ϳ��� ���������� �ٸ� ���������� �ϼ��� ����� �������� ���̱� ������
		�� jsp �������� �ϼ��ϱ� ���� ���� �� �������� ���� �����ؾ� �Ѵ� (ex: jstl, page..)
	</p>    
    <c:forEach begin="0" end = "9" var="i">
    <p>paragraph${i}, ${fruit}</p> <!-- fruit �翬�� �� ���� -->
    </c:forEach>
    <jsp:include page="./bottom.jsp"/>