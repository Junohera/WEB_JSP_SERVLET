<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String loginCheck = request.getParameter("loginCheck");
	String url = "";
	
	// sendRedirect를 사용한 경우
	/* if (userId.equals("scott") && userPw.equals("1234") && loginCheck.equals("user")) {
	    response.sendRedirect("12_ActionUser.jsp?userId=" + userId + "&userName=Gildong");
	} else if (userId.equals("scott") && userPw.equals("1234") && loginCheck.equals("manager")) {
	    response.sendRedirect("12_ActionManager.jsp?userId=" + userId + "&userName=Gildong");
	} else {
	    response.sendRedirect("12_ActionTagForm.jsp?userId=" + userId +"&loginCheck=" + loginCheck);
    } */
    
    // forward를 사용한 경우
    /* if (userId.equals("scott") && userPw.equals("1234") && loginCheck.equals("user")) {
        url = "12_ActionUser.jsp";
        request.setAttribute("userName", "홍길동");
    } else if (userId.equals("scott") && userPw.equals("1234") && loginCheck.equals("manager")) {
        url = "12_ActionManager.jsp";
        request.setAttribute("userName", "홍길남");
    } else {
    	url = "12_ActionTagForm.jsp";
    }

    RequestDispatcher dp = request.getRequestDispatcher(url);
    dp.forward(request, response); */
    
    if (userId.equals("scott") && userPw.equals("1234") && loginCheck.equals("user")) {%>
		<jsp:forward page="12_ActionUser.jsp">
			<jsp:param value="Gildong" name="userName"/>
		</jsp:forward>	
	<%} else if (userId.equals("scott") && userPw.equals("1234") && loginCheck.equals("manager")) {%>
		<jsp:forward page="12_ActionManager.jsp">
			<jsp:param value="Gildong" name="userName"/>
		</jsp:forward>    
	<%
	} else {
		
		response.sendRedirect("12_ActionTagForm.jsp?userId=" + userId +"&loginCheck=" + loginCheck);
	}
    
%>