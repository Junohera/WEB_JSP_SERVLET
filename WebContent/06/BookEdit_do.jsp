<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>

<%!
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String uid = "juno";
	String pass = "juno";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
%>

<%
	request.setCharacterEncoding("UTF-8");

	String subject = request.getParameter("subject");
	int makeyear = Integer.parseInt(request.getParameter("makeyear"));
	int inprice = Integer.parseInt(request.getParameter("inprice"));
	int outprice = Integer.parseInt(request.getParameter("outprice"));
	String flag_grade = request.getParameter("grade");
	String booknum = request.getParameter("booknum");
	String grade = "";
	
	if (flag_grade.equals("all")) grade = "전체";
	else if (flag_grade.equals("adult")) grade = "성인전용";
	else if (flag_grade.equals("kid")) grade = "청소년구매가능";

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, uid, pass);
			String sql = "UPDATE BOOKLIST SET "
				+ " SUBJECT = ?"
				+ ", MAKEYEAR = ?"
				+ ", INPRICE = ?"
				+ ", OUTPRICE = ?"
				+ ", GRADE = ?"
				+ " WHERE BOOKNUM = ?";
    		pstmt = con.prepareStatement(sql);
			pstmt.setString(1, subject);
			pstmt.setInt(2, makeyear);
			pstmt.setInt(3, inprice);
			pstmt.setInt(4, outprice);
			pstmt.setString(5, grade);
			pstmt.setString(6, booknum);
    		
    		int result = pstmt.executeUpdate();
    		
    		if (result == 1) {
    			response.sendRedirect("BookMGR.jsp");
    		} else {
    			response.sendRedirect("BookEdit.jsp?booknum=" + booknum);
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