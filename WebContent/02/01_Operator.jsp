<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_Operator</title>
</head>
<body>
<%
	int num1 = 20;
	int num2 = 7;
	double resultDouble;
	int resultInt = 0;
	
	resultInt = num1 + num2;
	out.print(num1 + " + " + num2 + " = " + resultInt + " <br> ");
	
	resultInt = num1 - num2;
	out.print(num1 + " - " + num2 + " = " + resultInt + " <br> ");
	
	resultInt = num1 * num2;
	out.print(num1 + " * " + num2 + " = " + resultInt + " <br> ");
	
	resultDouble = num1 / (double)num2;
	out.print(num1 + " / " + num2 + " = " + resultDouble + " <br> ");
	
	// 출력구문 <%= 로 출력하기에 부담스런 내용은 위와 같이 out.print()로 출력합니다.
%>
</body>
</html>