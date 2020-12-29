<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- JSTL로 구현한 JSP의 if문 -->
    <c:if test="${param.color == 1}">
        <span style="color: red; font-size: 180%; font-weight: bold;">빨강</span>
    </c:if>

    <c:if test="${param.color == 2}">
        <span style="color: green; font-size: 180%; font-weight: bold;">초록</span>
    </c:if>

    <c:if test="${param.color == 3}">
        <span style="color: blue; font-size: 180%; font-weight: bold;">파랑</span>
    </c:if>
</body>
</html>