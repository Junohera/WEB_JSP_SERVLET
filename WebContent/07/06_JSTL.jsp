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
    <!-- 단순 출력 -->
    <c:out value="Hello World"/><hr><br>

    <!-- 변수생성 및 초기화 1 -->
    <c:set var="msg" value="Hello"></c:set>
    \${msg} = ${msg}<br>
    
    <!-- 변수생성 및 초기화 2 -->
    <c:set var="age">30</c:set>
    \${age} = ${age}<br>

    <!-- JSP에서 선언 및 초기화된 변수는 EL로 출력이 되지 않지만 위와같이 JSTL 변수는 가능합니다. -->
    <%
        String test = "test";
    %>
    \${test} = ${test}<hr><br>

    <!-- 객체 생성 -->
    <!-- MemberBean member = new MemberBean(); -->
    <c:set var="member" value="<%=new com.juno.dto.MemberBean()%>"></c:set>
    
    <!-- 멤버변수에 값저장 -->
    <c:set target="${member}" property="name" value="홍길동"></c:set>
    <c:set target="${member}" property="userid">Hong</c:set>

    <!-- 멤버변수 값 출력 -->
    \${member.name} = ${member.name}<br>
    \${member.userid} = ${member.userid}<hr>
    <!-- 사용중인 클래스에 getters/setters가 존재해야 member.name  -->

    <c:set var="add" value="${10 + 5}"></c:set>
    \${add} = ${add} <br>
    <c:set var="flag" value="${10 > 5}"></c:set>
    \${flag} = ${flag} <br>
    
</body>
</html>