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
    <%
        String[] movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
        pageContext.setAttribute("movieList", movieList);
    %>
    <table border="1" style="width: 700px; text-align: center;">
        <tr>
            <th>index</th>
            <th>count</th>
            <th width="300">title</th>
        </tr>
        <c:forEach var="movie" items="${movieList}" varStatus="status">
            <tr>
                <td>${status.index}</td>
                <td>${status.count}</td>
                <td>${movie} </td>
            </tr>
        </c:forEach>
    </table>
    <!-- status : 현재 반복순서의 상태
    ${status.index} : 0부터 시작한 반복의 현재 아이템
    ${status.count} : 1부터 시작한 반복의 현재 아이템
    -->

    <ul>
        <c:forEach var="movie" items="${movieList}" varStatus="status">
            <c:choose>
                <c:when test="${status.first}">
                    <li style="font-weight: bold; color: red;">${movie}</li>
                </c:when>
                <c:when test="${status.last}">
                    <li style="font-weight: bold; color: blue;">${movie}</li>
                </c:when>
                <c:otherwise>
                    <li>${movie}</li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </ul>
    <!-- 
        ${status.first} : 현재 루프가 처음인지
        ${status.last} : 현재 루프가 마지막인지
     -->

     <!-- 마지막 아이템만 빼고 각 아이템 사이에 (,)를 찍어 출력하고 싶을 때 -->
    <c:forEach var="movie" items="${movieList}" varStatus="status">
        ${status.current} <c:if test="${not status.last}">, </c:if>
    </c:forEach>

</body>
</html>