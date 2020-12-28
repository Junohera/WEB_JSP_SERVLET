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
			<th>이름</th>
			<th>아이디</th>
			<th>암호</th>
			<th>전화번호</th>
		</tr>
		<!--
			데이터베이스에 연결하고, mem 테이블에서 레코드를 읽어와서, 레코드 개수만큼 <tr></tr>를
			반복 추가합니다.
		 -->
		 <%
		 	try {
		 		Class.forName(driver);
			 	con = DriverManager.getConnection(url, uid, pass);
			 	
			 	String sql = "select * from mem";
			 	pstmt = con.prepareStatement(sql);
			 	rs = pstmt.executeQuery();
			 	
			 	while (rs.next()) {
			 		out.println("<tr><td>" + rs.getString("name") + "</td>");
			 		String anchor = "<td><a href='MemberEdit.jsp?userid="
			 			+ rs.getString("id") + "'>"
			 			+ rs.getString("id") + "</a></td>";
		 			// 현재의 id값으로 각 레코드별 다른파라미터를 가진 링크를 포함
			 		out.println(anchor);
			 		out.println("<td>" + rs.getString("pwd") + "</td>");
			 		out.println("<td>" + rs.getString("phone") + "</td></tr>");
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
		 	<td colspan="4" align="center">
				 <input type="button" value="add" onClick="location.href='MemberAdd.jsp'">
			 </td>
		 </tr>
	</table>
</body>
</html>