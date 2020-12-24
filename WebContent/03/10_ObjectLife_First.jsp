<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    pageContext.setAttribute("name", "page man"); // pageContext의 수명 : 현재페이지
    request.setAttribute("name", "request man"); // request의 수명 : 다음페이지
    session.setAttribute("name", "session man"); // session의 수명 : 브라우저(종료)
    application.setAttribute("name", "application man"); // application의 수명 : 서버(종료)
    
    System.out.println("firstPage.jsp : ");
    System.out.println("First의 pageContext객체 : " + pageContext.getAttribute("name"));
    System.out.println("First의 request객체 : " + request.getAttribute("name"));
    System.out.println("First의 session객체 : " + session.getAttribute("name"));
    System.out.println("First의 application객체 : " + application.getAttribute("name"));

    RequestDispatcher dp = request.getRequestDispatcher("10_ObjectLife_Second.jsp");
    dp.forward(request, response);
%>
</body>
</html>