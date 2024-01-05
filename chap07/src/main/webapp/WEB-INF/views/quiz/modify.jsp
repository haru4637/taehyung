<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, chap07.dto.SoccerplayerDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Modify</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/quiz/css/soccerplayersList.css">

</head>
<body>
	<div class="player-list">
	<%
	SoccerplayerDTO soccerplayer = (SoccerplayerDTO)request.getAttribute("soccerplayer");
		
	if(soccerplayer != null){
 		out.print("<div class=\"name\">PLAYER_ID</div>"
				+ "<div class=\"name\">PLAYER_KOR_NAME</div>"
				+ "<div class=\"name\">PLAYER_POSITION</div>"
				+ "<div class=\"name\">PLAYER_BACK_NUMBER</div>"
				+ "<div class=\"name\">COUNTRY_ID</div>"
				+ "<div class=\"name\">TEAM_ID</div>");
			out.print(soccerplayer.getDivRow());
		
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
		<form action="<%=request.getContextPath() %>/player/change" method="POST" id="player"></form>
	<span>���� ���� : </span>
	<button type="submit" form="player">Ȯ��</button>
	</div>
</body>
</html>