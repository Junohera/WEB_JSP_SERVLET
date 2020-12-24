<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");
    
    if (userId.equals("hong") && userPw.equals("1234")) {
    	session.setAttribute("loginUser", userId);
    	response.sendRedirect("06_main.jsp");
    } else {
    	response.sendRedirect("06_LoginForm.jsp?userId=" + userId);
    }
%>