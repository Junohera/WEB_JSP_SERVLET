<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverAction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
	request.setCharacterEncoding("UTF-8");
	Connection con = null;
	PreparedStatement pstmt = null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "juno";
	String pass = "juno";
	
	String booknum = request.getParameter("booknum");
	String subject = request.getParameter("subject");
	int makeyear = Integer.parseInt(request.getParameter("makeyear"));
	int inprice = Integer.parseInt(request.getParameter("inprice"));
	int outprice = Integer.parseInt(request.getParameter("outprice"));
	String grade = request.getParameter("grade");
		if (grade.equals("all")) grade = "전체";
		else if (grade.equals("adult")) grade = "성인전용";
		else if (grade.equals("kid")) grade = "청소년구매가능";
	
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, uid, pass);
		String sql = "INSERT INTO BOOKLIST (BOOKNUM, SUBJECT, MAKEYEAR, INPRICE, OUTPRICE, GRADE) "
				+" VALUES (BOOKLIST_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, subject);
		pstmt.setInt(2, makeyear);
		pstmt.setInt(3, inprice);
		pstmt.setInt(4, outprice);
		pstmt.setString(5, grade);
		
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			response.sendRedirect("BookMGR.jsp");
		} else {
			response.sendRedirect("BookAdd.jsp");
		}
	} catch (Exception e) {e.printStackTrace();
	} finally {
		try {
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();	
		} catch (Exception e) {e.printStackTrace();}
	}
%>