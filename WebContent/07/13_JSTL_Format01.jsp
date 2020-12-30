<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <c:set var="now" value="<%=new java.util.Date()%>"></c:set>
    \{now} : ${now}<br>
    <fmt:formatDate value="${now}"></fmt:formatDate><br>
    date : <fmt:formatDate value="${now}" type="date"></fmt:formatDate><br>
    time : <fmt:formatDate value="${now}" type="time"></fmt:formatDate><br>
    both : <fmt:formatDate value="${now}" type="both"></fmt:formatDate><br>

    default : <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"></fmt:formatDate><br>
    short : <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"></fmt:formatDate><br>
    long : <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"></fmt:formatDate><br>
    full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate><br>

    pattern="yyyy년 MM월 dd일 hh시 mm분 ss초": <fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"></fmt:formatDate><br>
    <fmt:formatDate value="now" pattern="yyyy-MM-dd"></fmt:formatDate>
    <fmt:formatDate value="${now}" pattern="yyyy-MM-dd"></fmt:formatDate>
</body>
</html>