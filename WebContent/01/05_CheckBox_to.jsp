<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_CheckBox_to</title>
</head>
<body>
	<%
		String[] items = request.getParameterValues("item");
	%>
		<%if (items == null) { %>
			선택한 항목이 없습니다.
		<%} else {%>
					선택한 항목들 입니다.<hr>
				<ul>
				<%for (String i : items) {%>
					<li>
						<%=i%>
					</li>
				<%}%>
				</ul>
		<%} %>
	<hr>
</body>
</html>