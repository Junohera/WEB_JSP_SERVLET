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
	if (session.getAttribute("loginUser") == null) {
		response.sendRedirect("06_LoginForm.jsp");
	}
%>

아이디 : <%=session.getAttribute("loginUser")%> <br>
성명 : 홍길동 <br>
주소 : 서울특별시 마포구 <br>
전화번호 : 010 - xxxx - xxxx <br>
<input type="button" value="정보수정" /> 
<hr>
<form method="get" action="06_main.jsp">
	<input type="submit" value="main">
</form>
</body>
</html>