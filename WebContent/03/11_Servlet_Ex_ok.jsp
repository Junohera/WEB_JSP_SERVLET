<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String userId = (String) request.getAttribute("userId");
    String userPw = (String) request.getAttribute("userPw");
    String gender = (String) request.getAttribute("gender");
    String chk_mail = (String) request.getAttribute("chk_mail");
    String content = (String) request.getAttribute("content");
    String[] item = (String[]) request.getAttribute("item");
    String job = (String) request.getAttribute("job");
    String[] interest = (String[]) request.getAttribute("interest");
%>
아이디 : <%=userId%> <br>
암호 : <%=userPw%> <br>
성별 : <%=gender%> <br>
메일수신 : <%=chk_mail%> <br>
하고싶은말 : <%=content%> <br>
구입항목 : <%for(String i:item) out.print(i + " ");%> <br>
직업 : <%=job%> <br>
관심분야 : <%for(String i:interest) out.print(i + " ");%> <br>
</body>
</html>