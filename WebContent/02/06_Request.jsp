<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_Request</title>
</head>
<body>
<!--  request 객체가 담고 있는 정보들 -->
contextPath : <%= request.getContextPath() %><br>
requestMethod : <%= request.getMethod() %><br>
requestURL : <%= request.getRequestURL() %><br>
requestURI : <%= request.getRequestURI() %><br>
serverName : <%= request.getServerName() %><br>
protocol : <%= request.getProtocol() %><br>
<!--
    모든 JSP파일에는 response객체와 request객체가 포함되어 있습니다.
    request는 요청관련객체
    response는 응답관련객체
    out.print()함수로 사용되는 out객체도 현재 파일에 담겨있는 객체이며 자유롭게 사용이 가능합니다.
-->
</body>
</html>