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
	
	String booknum = null;
	String subject = null;
	int makeyear = 0;
	int inprice = 0;
	int outprice = 0;
	String grade = null;
	String flag_grade = "";
%>
</head>
<body>
	<%
        String booknum = request.getParameter("booknum");

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, uid, pass);
            
            String sql = "select * from booklist where booknum = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, booknum);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                booknum = rs.getString("booknum");
				subject = rs.getString("subject");
				makeyear = rs.getInt("makeyear");
				inprice = rs.getInt("inprice");
				outprice = rs.getInt("outprice");
				grade = rs.getString("grade");
					if (grade.equals("전체")) flag_grade = "all";
					else if (grade.equals("성인전용")) flag_grade = "adult";
					else if (grade.equals("청소년구매가능")) flag_grade = "kid";
            }
        } catch (Exception e) {e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();	
            } catch (Exception e) {e.printStackTrace();}
        }
	%>
	<h2>book change form</h2>
	<form  method="POST" action="BookEdit_do.jsp">
		<table>
			<tr>
				<td>도서번호</td>
				<td>
					<%=booknum%>
					<input type="hidden" name="booknum" value="<%=booknum%>">
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="subject" id="subject" value="<%=subject%>" >
				</td>
			</tr>
			<tr>
				<td>출판연도</td>
				<td>
					<input type="text" name="makeyear" id="makeyear" value="<%=makeyear%>" >
				</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>
					<input type="text" name="inprice" id="inprice" value="<%=inprice%>" >
				</td>
			</tr>
			<tr>
				<td>출고가격</td>
				<td>
					<input type="text" name="outprice" id="outprice" value="<%=outprice%>" >
				</td>
			</tr>
			<tr>
				<td>등급</td>
				<td>
					<label for="grade_all">
						<input type="radio" name="grade" value="all" id="grade_all"
						<%if (flag_grade.equals("all") || flag_grade.equals("")) out.print("checked");%>>전체&nbsp;
					</label>
					<label for="grade_adult">
						<input type="radio" name="grade" value="adult" id="grade_adult"
						<%if (flag_grade.equals("adult")) out.print("checked");%>>성인전용&nbsp;
					</label>
					<label for="grade_kid">
						<input type="radio" name="grade" value="kid" id="grade_kid"
						<%if (flag_grade.equals("kid")) out.print("checked");%>>청소년구매가능&nbsp;
					</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="update">
				</td>
				<td>
					<input type="reset" value="cancel" onClick="location.href='BookMGR.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>