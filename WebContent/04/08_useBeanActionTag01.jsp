<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.juno.dto.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 액션태그로 객체를 선언하는 방법 -->
<jsp:useBean id="member3" class="com.juno.dto.MemberBean"/>
<hr>
- 객체 생성후 정보 입력<br><br>
<%
	member3.setName("홍길동");
	member3.setUserid("HongGilDong");
%>

이름: <%=member3.getName()%> <br>
아이디: <%=member3.getUserid()%> <br>
<hr>

- 정보 변경한 후 변경된 정보 출력하기<br><br>
<%
	member3.setName("김하나");
	member3.setUserid("KimHana");
%>
이름: <%=member3.getName()%> <br>
아이디: <%=member3.getUserid()%>
<hr>

- 액션태그로 변경한 후 액션태그로 출력하기 <br><br>
<jsp:setProperty property="name" name="member3" value="박찬호"/>
<jsp:setProperty property="userid" name="member3" value="ParkChanho"/>
이름: <jsp:getProperty property="name" name="member3"/><br>
아이디: <jsp:getProperty property="userid" name="member3"/>


<br>
</body>
</html>