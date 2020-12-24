<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_LoginForm</title>
</head>
<body>
<%
	String age = request.getParameter("age"); // 이전 페이지의 request를 담아왔으므로 전전페이지에서 전달되어 이전페이지에 저장된 파라미터(parameter)도 사용이 가능합니다.
	String name = (String)request.getAttribute("name");
	/*
		Attribute에 저장형식은 모든 클래스의 부모클래스인 Object형태로 저장되므로, 다시 값을 추출할 때 다운 캐스팅이 필요합니다
	*/
%>
forward 방식으로 이동된 페이지 <br>
나이 : <%=age %> <br>
이름 : <%=name %> <br>
<!-- forward 방식으로 이동된 페이지는 한글에 대한 인코딩 작업이 필요 없습니다. -->
</body>
</html>