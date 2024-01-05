<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz</title>
</head>
<body>
	<h3># 요구사항</h3>
	
	<ul>
		<li>아이디와 비밀번호를 입력하고 로그인 버튼을 눌러 로그인을 할 수 있다 </li>
		<li>회원가입은 아이디와 비밀번호만 입력하면 완료된다 
			()대신 아이디 중복은 체크해야 하고, 가입된 정보는 application 영역에 등록한다)</li>
	
		<li>로그인에 성공한 사람은 세션이 유지되는 동안 로그인이 계속해서 유지되어야 한다</li>	
		<li>로그인 한 사람은 세로운 메모를 등록할 수 있고, 예전에 등록했던 메모들도 볼 수 있다</li>
		<li>서버를 재시작 했을 때 모든 회원정보 및 메모가 사라져도 상관없다 </li>
		<li>페이지 개수에 제한은 없으며 모든 내용은 quiz폴더 밑에 만들것
			(서블릿을 사용하고 싶다면 URL을 quiz로 맞출 것 )</li>	
	</ul>
	
	
	<form action="/chap04/quiz/index"  method="GET">
		<input type ="text" name="login_id" value="로그인ID"/>
		<input type ="text" name="password" value="비밀번호"/>
		<button id="loginBtn" onclick="location.href='/chap04/quiz/addMember.jsp';">회원가입</button>
		<input type="submit" value="로그인"/> 
	</form>
	
	
	<script>
	
	const loginBtn = document.getElementById("loginBtn");
	
	
	loginBtn.addEventListener('click',(e)=>{
		
	
		location.href = '/chap04/quiz/add.jsp?id='+applicationInput.value+'&scope=application';
	
});
	</script>
		
</body>
</html>