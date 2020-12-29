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
    tomcat server default locale : <%=response.getLocale()%> <br>
    <fmt:setLocale value="ko_KR"></fmt:setLocale>
    locale set korea -> <%=response.getLocale()%> <br><br>
    currency : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber><br>
    <fmt:formatNumber value="1000.1234" type="number" maxFractionDigits="3"></fmt:formatNumber><br>

    날짜 : <fmt:formatDate value="${now}"></fmt:formatDate>
    <br><br>

    <fmt:setLocale value="ja_JP"></fmt:setLocale>
    locale set japan -> <%=response.getLocale()%> <br><br>
    currency : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber><br>
    날짜 : <fmt:formatDate value="${now}"></fmt:formatDate><br>

    <fmt:setLocale value="en_US"></fmt:setLocale>
    locale set English -> <%=response.getLocale()%> <br><br>
    currency : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber><br>
    날짜 : <fmt:formatDate value="${now}"></fmt:formatDate><br>
    
    <fmt:requestEncoding value="UTF-8"></fmt:requestEncoding>
    <%-- <% request.setCharacterEncoding("UTF-8"); --%>
</body>
</html>