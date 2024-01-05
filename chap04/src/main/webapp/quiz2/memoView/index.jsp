<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메모 메인</title>
</head>
<body>
	<h1>Memo Main</h1>

	<div>
		<%
		/* Map<String, Object> infoMap = session.getAttribute("info");
		List<String> memoList = infoMap.get("memoList");
		for(int i = 0; i<){
			
		} */
		 java.util.Map<String, Object> infoMap =  (java.util.Map)session.getAttribute("info");
	      java.util.List<String> memoList = (java.util.List)infoMap.get("memoList");
	      
	      if(memoList == null){
	         out.print("<div>메모가 아직 없습니다!</div>");
	      }else{
	         for(String memo : memoList){
	            out.print(String.format("<div class=\"memo\">%s</div>", memo));
	         }         
	      }
		%>

	</div>

	<form action="./add" method="POST">
		<!-- ./add => 앞에주소 뒤에 /add 로 연결  -->
		<input type="text" name="memo">
		<button>추가</button>
	</form>

</body>
</html>