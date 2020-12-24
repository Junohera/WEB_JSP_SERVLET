<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("s_name1", "저는 세션에 저장된 첫번째값이에요. ^o^");
		session.setAttribute("s_name2", "저는 세션에 저장된 두번째값이에요. ^o^");
		session.setAttribute("s_name3", "저는 세션에 저장된 세번째값이에요. ^o^");
		out.print(" <h3> >> 세션을 삭제하기전 <<h3 </h3> ");
		
		Enumeration names = session.getAttributeNames();
		
		while (names.hasMoreElements()) {
			String name = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.println(name + " : " + value + "<br>");
		}
		
		out.print("<hr><h3> >> 세션을 삭제후 <<h3 </h3> ");
		// 이름을 지정하여 세션에 저장된 객체를 제거합니다.
		session.removeAttribute("s_name2");
		names = session.getAttributeNames();
		while (names.hasMoreElements()) {
			String name = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.println(name + " : " + value + "<br>");
		}
	%>
</body>
</html>