<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Import</title>
</head>
<body>
<%
	Calendar date = Calendar.getInstance();
	SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyy년 MM월 dd일");
	SimpleDateFormat hhmmss = new SimpleDateFormat("hh시 mm분 ss초");
%>
오늘은 <b><%out.print(yyyyMMdd.format(date.getTime()));%></b>입니다.
<hr>
지금 시각은 <b><%out.print(hhmmss.format(date.getTime()));%></b>입니다.
</body>
</html>