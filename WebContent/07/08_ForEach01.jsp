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
        String [] movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
        pageContext.setAttribute("movieList", movieList);
        // Attribute는 해쉬맵 형식의 리스트이므로 키값만 존재하면 어떤 자료들도 보관할 수 있습니다.
        // 또한 ArrayList와 같은 자료들도 손쉽게 보관하거나 전달할 수 있습니다.
    %>
    <!-- JSP문법을 사용한 실행 -->
    <%
        String [] mlist = (String [])pageContext.getAttribute("movieList");
        for (String m : mlist) {
            out.println(m + "&nbsp;&nbsp;");
        }
    %>
    <hr>
    <!--
        JSP문법을 사용한다면
        String [] mlist = (String[])pageContext.getAttribute("movieList");
        와 같이 꺼내서 사용하지만 EL 문법을 쓰면 아래와 같이 형변환이나 메서드 사용없이 손쉽게 사용이 가능합니다.
    -->
    <c:forEach var="movie" items="${movieList}">
        ${movie}&nbsp;&nbsp;
    </c:forEach>
</body>
</html>