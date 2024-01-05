<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
		<h3>회원가입</h3>
		
		<input type="text" id="login_value" name="login_id" value="로그인ID"   />
		<input type="text"  id="password_value" name="password_login" value="비밀번호"   />
		
		<button id="addMemberBtn">회원가입</button>
	
	
	
	
	<script>
		const addMemberBtn =  document.getElementById("addMemberBtn");
		
		
		addMemberBtn.addEventListener('click',(e)=>{
		
			location.href = '/chap04/quiz/index.jsp?id='+applicationInput.value+'&scope=application';
			
		});
	</script>
	
	
	
</body>
</html>