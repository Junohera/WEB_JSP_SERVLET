<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Sum02</title>
</head>
<body>
<!-- JSP는 JAVA에서 사용하던 문법이 거의 동일하게 사용 -->
<!--
	그동안 화면 구성을 HTML5와 CSS가 담당해왔다면
	이제는 그중 일부를 JSP가 대신해서 담당해줄 것.
 -->
 1부터 100까지의 합을 각 숫자들의 합을 모두 출력하면서 최종 100까지의 합 출력<br>
 <%
 	int sum = 0;
 	for (int i = 1; i <= 1000; i++) {
 		sum += i;
%>
<!-- 반복실행문이 끝나지 않은채 JSP영역 종료 -->
		<%= "<i>" + sum + "</i>"%> <!-- JSP변수의 현재 값을 출력 -->
<!-- JSP가 다시 시작되어 끝나지 않은 반복실행문을 종료하는 구문 추가 -->
<%
 	}
 %>
 <!-- JSP의 사용은 HTML5 코드 사이에 JSP가 껴드는 형식이지만, -->
 <!-- JSP영역은 중간에 끝나고 이후 다시 시작 되더라도 명령 문법의 내용이 이어집니다.
 따라서 위의 내용처럼 두개의 영역에 하나의 반복실행문이 걸쳐서 구성되기도 합니다. -->
</body>
</html>