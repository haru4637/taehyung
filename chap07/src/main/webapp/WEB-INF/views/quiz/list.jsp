<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, chap07.dto.SoccerplayerDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/quiz/css/soccerplayersList.css">

</head>
<body>
	<h3># All Soccer Players</h3>
	<div class="player-list">
	<%
		Object soccerplayers = request.getAttribute("soccerplayers");
		
	if(soccerplayers != null){
 		out.print("<div class=\"name\">PLAYER_ID</div>"
				+ "<div class=\"name\">PLAYER_KOR_NAME</div>"
				+ "<div class=\"name\">PLAYER_POSITION</div>"
				+ "<div class=\"name\">PLAYER_BACK_NUMBER</div>"
				+ "<div class=\"name\">COUNTRY_ID</div>"
				+ "<div class=\"name\">TEAM_ID</div>");
 		for(SoccerplayerDTO player : (List<SoccerplayerDTO>)soccerplayers){
			out.print(player.getDivRow());
		}
	} else {
		out.print("<div>No player here.</div>");
	}
	
	%>
	</div>
	<br>
	<div>
		�̸� : <input type="text" name="PLAYER_KOR_NAME" form="player"> 
		������ : <input type="text" name="PLAYER_POSITION" form="player">
		���ȣ : <input type="number" name="PLAYER_BACK_NUMBER" form="player"> 
		�����ڵ� : <input type="text" name="COUNTRY_ID" form="player"> 
		����ȣ : <input type="number" name="TEAM_ID" form="player"> 
		<form action="<%=request.getContextPath() %>/player/add" method="POST" id="player"></form>
	<span>���� �߰��ϱ� : </span>
	<button type="submit" form="player">�Է�</button>
	</div>
	
	<br>
	<div>
		������ ���� ��Ϲ�ȣ : <input type="number" name="PLAYER_ID" form="clear"> <button type="submit" form="clear">����</button>
		<form action="<%=request.getContextPath() %>/player/clear" method="POST" id="clear"></form>
	</div>
	
	<br>
	<div>
		�������� ���� ��Ϲ�ȣ : <input type="number" name="PLAYER_ID" form="modify"> <button type="submit" form="modify">����</button>
		<form action="<%=request.getContextPath() %>/player/modify" method="POST" id="modify"></form>
	</div>
</body>
</html>