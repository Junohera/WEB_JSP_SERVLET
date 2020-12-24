<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_Select_to</title>
</head>
<body>
    <%
        String job = request.getParameter("job");
        String[] interests = request.getParameterValues("interest");
    %>
    <%if (job.isEmpty()) {%>
    		<p>선택한 직업이 없습니다.<p>
    <%}else {%>
    	<%=job%>
    <%}%>
    

    <%if (interests == null) {%>
    		<p>선택한 관심분야가 없습니다.<p>
    <%}else {%>
    		<%for (String i : interests) {%>
    					<%=i%>,
    		<%}%>
    <%}%>
</body>
</html>