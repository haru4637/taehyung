<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메뉴선택</title>
</head>
<body>
	<div>
		<img alt="" src="">
		
	
	</div>
	
	
	<div>
		<img id="pizza1" alt="스노우 브리스킷 비비Q" src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_a0G7WsxF.jpg">
		<img id="pizza2" alt="스노우 블랙타이거 슈림프" src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_B8cGMt1w.jpg">
		<img id="pizza3" alt="스노우 와일드 와일드 웨스트 스테이크" src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_Y3W7J63w.jpg">
		<img id="pizza4" alt="브리스킷 바비Q" src="https://cdn.dominos.co.kr/admin/upload/goods/20231215_965Hu68d.jpg">
	
	</div>
	<form action="/chap06/menu/">
			메뉴<input id ="menu" type="text" value="메뉴입력"/>
			크기<input id = "size" type="text" value="크기">
			개수<input id = "count" type="text" value="개수">
			<input type="submit" />
	</form>
	
	<script>
		const pizzaMenu= document.getElementById("menu");
		const pizzaSize= document.getElementById("size");
		const pizzaCount= document.getElementById("count");
		
		
	</script>
	
</body>
</html>