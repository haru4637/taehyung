<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
		<h3>ȸ������</h3>
		
		<input type="text" id="login_value" name="login_id" value="�α���ID"   />
		<input type="text"  id="password_value" name="password_login" value="��й�ȣ"   />
		
		<button id="addMemberBtn">ȸ������</button>
	
	
	
	
	<script>
		const addMemberBtn =  document.getElementById("addMemberBtn");
		
		
		addMemberBtn.addEventListener('click',(e)=>{
		
			location.href = '/chap04/quiz/index.jsp?id='+applicationInput.value+'&scope=application';
			
		});
	</script>
	
	
	
</body>
</html>