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
	String userId = request.getParameter("userId");
	if (userId == null) {
		userId = "";
	}
%>
    <form method="post" action="06_Login_do.jsp">
        <label for="userId">
            id: <input type="text" name="userId" value="<%=userId%>">
        </label>
        <br>
        <label for="userPw">
            pw: <input type="password" name="userPw">
        </label>
        <hr>
        <input type="submit" value="login">
    </form>
</body>
</html>