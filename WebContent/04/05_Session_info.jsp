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
        String id_str = session.getId(); // 현재 세션의 고유코드
        long lasttime = session.getLastAccessedTime(); // 마지막 접근시간 - millisecond
        long createdtime = session.getCreationTime(); // 생성시간 - millisecond
        // 사용시간 - 결과도 밀리초 -> 1000으로 나누어 초단위로
        long time_used = (lasttime - createdtime) / 1000;
        session.setMaxInactiveInterval(3600);
        int inactive = session.getMaxInactiveInterval() / 60; // 수명 - 분
        boolean b_new = session.isNew(); // 새로만든 세션의 여부
    %>

    [1] sessionId [<%=id_str%>] 입니다. <br><hr>
    [2] stayTime <%=time_used%>초입니다.  <br><hr>
    [3] 세션의 유효시간 <%=inactive%> 입니다. <br><hr>
    [4] 세션이 새로만들어졌나요? <br>
    <%
        if (b_new) out.print("yes! is new");
        else out.print("no! is already");
    %>

</body>
</html>