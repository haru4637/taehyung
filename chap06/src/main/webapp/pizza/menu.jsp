<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�޴�����</title>
</head>
<body>
	<div>
		<img alt="" src="">
		
	
	</div>
	
	
	<div>
		<img id="pizza1" alt="����� �긮��Ŷ ���Q" src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_a0G7WsxF.jpg">
		<img id="pizza2" alt="����� ��Ÿ�̰� ������" src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_B8cGMt1w.jpg">
		<img id="pizza3" alt="����� ���ϵ� ���ϵ� ����Ʈ ������ũ" src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_Y3W7J63w.jpg">
		<img id="pizza4" alt="�긮��Ŷ �ٺ�Q" src="https://cdn.dominos.co.kr/admin/upload/goods/20231215_965Hu68d.jpg">
	
	</div>
	<form action="/chap06/menu/">
			�޴�<input id ="menu" type="text" value="�޴��Է�"/>
			ũ��<input id = "size" type="text" value="ũ��">
			����<input id = "count" type="text" value="����">
			<input type="submit" />
	</form>
	
	<script>
		const pizzaMenu= document.getElementById("menu");
		const pizzaSize= document.getElementById("size");
		const pizzaCount= document.getElementById("count");
		
		
	</script>
	
</body>
</html>