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
<table width="800" border="1">
		<tr>
			<th>BOOKNUM</th>
			<th>SUBJECT</th>
			<th>MAKEYEAR</th>
			<th>INPRICE</th>
			<th>OUTPRICE</th>
			<th>GRADE</th>
		<%
		 	try {
		 		Class.forName(driver);
			 	con = DriverManager.getConnection(url, uid, pass);
			 	
			 	String sql = "select * from booklist";
			 	pstmt = con.prepareStatement(sql);
			 	rs = pstmt.executeQuery();
			 	
			 	while (rs.next()) {
					out.println("<tr>");
						out.println("<td align='center'>" + "<a href='BookEdit.jsp?booknum="+ rs.getString("BOOKNUM") + "'>" + rs.getString("BOOKNUM") + "</a></td>");
						out.println("<td>" + rs.getString("SUBJECT") + "</td>");
						out.println("<td align='center'>" + rs.getString("MAKEYEAR") + "</td>");
						out.println("<td align='right'>" + rs.getInt("INPRICE") + "</td>");
						out.println("<td align='right'>" + rs.getInt("OUTPRICE") + "</td>");
						out.println("<td align='center'>" + rs.getString("GRADE") + "</td>");
					out.println("</tr>");
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
		 <tr>
		 	<td colspan="6" align="center">
				 <input type="button" value="add" onClick="location.href='BookAdd.jsp'">
			 </td>
		 </tr>
	</table>
</body>
</html>