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
<!-- 세션의 수명은 브라우저가 닫힐때까지입니다. 탭과는 무관 -->
    <h3>세션에 저장된 값 하나씩 추출</h3>
    <%
        String id = (String) session.getAttribute("id");
        String pwd = (String) session.getAttribute("pwd");
        Integer age = (Integer) session.getAttribute("age");
    %>

    id : <%=id%> <br>
    pwd : <%=pwd%> <br>
    age : <%=age%> <br>
    
    <%
	    Enumeration<String> names = session.getAttributeNames();
	    
		while(names.hasMoreElements()) {
			String name = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.println(name + " : " + value + "<br>");
		}
    %>
    
</body>
</html>