<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_Sum01</title>
</head>
<body>
<!-- JSP는 JAVA에서 사용하던 문법이 거의 동일하게 사용 -->
<!--
	그동안 화면 구성을 HTML5와 CSS가 담당해왔다면
	이제는 그중 일부를 JSP가 대신해서 담당해줄 것.
 -->
 <%
 	int sum = 0;
 	for (int i = 1; i <= 1000; i++) {
 		sum += i;
 	}
 %>

 1부터 1000까지의 합 <%= sum %>
</body>
</html>