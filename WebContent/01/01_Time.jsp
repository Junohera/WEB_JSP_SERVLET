<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    	JSP : Java Server Page
	    	서버 내에서 페이지 표시에 필요한 연산을 마친 후 결과만 클라이언트로 보내주는 웹 프로그래밍 언어
	    	JSP이외에 웹프로그래밍 언어로는 ASP, PHP가 있으며, 서버 및 환경에 따라 프로그래밍 언어 종류를 선택적으로 사용하게 됩니다.
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_Time</title>
</head>
<body>
	JAVA SERVER PAGE <br>
	현재시간 : <%= new java.util.Date() %>
	<!-- java.util.Date d = new java.util.Date(); d를 body의 해당위치에 표시 -->
	
	<%-- html파일안에 jsp 문법이 껴들어 코딩될때는 <% %>를 사용합니다. --%>
	<%-- 다만 페이지에 출력될 내용을 기술한다면 <%= %>를 쓰고 변수명이나 출력할 내용을 씁니다. --%>
	
	<!-- HTML과 JSP가 동시 사용되기 때문에 주석의 양식은 위의 두가지를 모두 사용할 수 있습니다. -->

	<!--
		jsp코드는 연산 기능 및 프로그래밍 언어가 갖고있는 모든 기능이 포함되어 있으며, 그 명령들은 서버에서 실행됩니다. 명령이 실행된 결과가 페이지에 포함되는 것이므로, 클라이언트에서는 코드내용을 볼 수 없으며 결과만 받아 보게되는 형식입니다.
		
		실제 코드 : new java.util.Date()
		클라이언트측 코드 : Wed Dec 23 10:00:37 KST 2020
		
		게시판을 화면에 보여야하는 경우 데이터베이스에서 데이터를 select해오는 동작부터 리스트에 담아 전송하게되는 동작까지 서버에서 jsp와 sql로 실행하게하며,
		결과의 내용만 클라이언트에 전송되어 그 내용을 HTML과 CSS로 잘 정리한 게시판을 화면에 보게되는 것입니다. 
	지금처럼 페이지에 JSP가 섞여 있다면 서버는 JSP코드부터 모두 실행한 후에 페이지를 클라이언트에 전송하게됩니다.
	-->
</body>
</html>