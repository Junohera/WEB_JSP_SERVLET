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
	String name = "";
	String phone = "";
%>

<%
	request.setCharacterEncoding("UTF-8");

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, uid, pass);
			String sql = "UPDATE MEM SET NAME = ?, PWD = ?, PHONE = ? WHERE ID = ?";
    		pstmt = con.prepareStatement(sql);
    		pstmt.setString(1, request.getParameter("name"));
    		pstmt.setString(2, request.getParameter("pwd"));
    		pstmt.setString(3, request.getParameter("phone"));
    		pstmt.setString(4, request.getParameter("userid"));
    		
    		int result = pstmt.executeUpdate();
    		
    		if (result == 1) {
    			response.sendRedirect("MemberMGR.jsp");
    		} else {
    			response.sendRedirect("MemberEdit.jsp?userid=" + request.getParameter("userid"));
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