<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_LoginForm</title>
</head>
<body>
    <form method="get" action="07_Login_do.jsp">
    	<label for="userId">id : </label>
        <input type="text" name="userId" id="userId">
        <br>
        <label for="userPwd">pwd : </label>
        <input type="password" name="userPwd" id="userPwd">
        <br>
        <input type="submit" value="login">
    </form>
</body>
</html>