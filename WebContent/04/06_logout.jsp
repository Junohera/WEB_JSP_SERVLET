<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String loginUser = (String)session.getAttribute("loginUser");
		session.invalidate(); // 현재 세션아이디에 저장된 세션내용을 모두 지웁니다.
	%>
	
	<script>
		alert("logout!!!");
		location.href="06_LoginForm.jsp?userId=<%=loginUser%>";
	</script>
</body>
</html>