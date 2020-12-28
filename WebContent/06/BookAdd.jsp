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
	<h2>book add form</h2>
	<form  method="POST" action="BookAdd_do.jsp">
		<table>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="subject" id="subject">
				</td>
			</tr>
			<tr>
				<td>출판연도</td>
				<td>
					<input type="text" name="makeyear" id="makeyear">
				</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>
					<input type="text" name="inprice" id="inprice">
				</td>
			</tr>
			<tr>
				<td>출고가격</td>
				<td>
					<input type="text" name="outprice" id="outprice">
				</td>
			</tr>
			<tr>
				<td>등급</td>
				<td>
					<label for="grade_all">
						<input type="radio" name="grade" value="all" id="grade_all" checked>전체
					</label>
					<label for="grade_adult">
						<input type="radio" name="grade" value="adult" id="grade_adult">성인전용
					</label>
					<label for="grade_kid">
						<input type="radio" name="grade" value="kid" id="grade_kid">청소년구매가능
					</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="send">
				</td>
				<td>
					<input type="reset" value="cancel" onClick="location.href='BookMGR.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>