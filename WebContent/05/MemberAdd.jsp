<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%!
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String uid = "juno";
	String pass = "juno";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
%>
</head>
<body>
	<h2>회원의 정보 입력폼</h2>
	<form  method="POST" action="MemberAdd_do.jsp">
		<table>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="name" id="name" size="20">
				</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="userid" id="userid" size="20">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="pwd" id="pwd" size="20">
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<input type="text" name="phone" id="phone" size="11">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="send">
				</td>
				<td>
					<input type="reset" value="cancel">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>