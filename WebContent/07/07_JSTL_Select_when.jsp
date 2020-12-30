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
    <c:choose>
        <c:when test="${param.fruit == 1}">
            <span style="color: red; font-size: 180%; font-weight: bold;">사과</span>
        </c:when>
        <c:when test="${param.fruit == 2}">
            <span style="color: green; font-size: 180%; font-weight: bold;">메론</span>
        </c:when>
        <c:when test="${param.fruit == 3}">
            <span style="color: blue; font-size: 180%; font-weight: bold;">바나나</span>
        </c:when>
        <c:otherwise>
            <span style="color: orange; font-size: 180%; font-weight: bold;">오렌지</span>
        </c:otherwise>
    </c:choose>
</body>
</html>