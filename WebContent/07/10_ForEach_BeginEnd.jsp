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
    <!-- 반복실행문의 또다른 예 -->
    <br>
    <h3>반복 실행문의 또다른 사용 예</h3>
    <br>
    <c:forEach var="cnt" begin="1" end="10" varStatus="status">
        ${cnt} <c:if test="${not status.last}">, </c:if>
    </c:forEach>
    <br><br><br>

    <table border="1" style="width:50%; text-align: center;" align="left">
        <tr>
            <th>index</th>
            <th>count</th>
            <th>cnt</th>
        </tr>
        <c:forEach var="cnt" begin="7" end="10" varStatus="status">
            <tr>
                <th>${status.index}</th>
                <th>${status.count}</th>
                <th>${cnt}</th>
            </tr>
        </c:forEach>
    </table>
    <c:forEach var="i" begin="0" end="10" varStatus="status">
        ${i}
    </c:forEach>
</body>
</html>