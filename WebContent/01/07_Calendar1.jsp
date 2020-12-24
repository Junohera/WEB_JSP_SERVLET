<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_Calendar1</title>
<style>
    table>tbody>tr>td{font-size: 90%; font-weight: bold;text-align:center;}
    table>tbody>tr>td:first-child{color:red;}
    table>tbody>tr>td:last-child{color:blue;}
    .notUse {color: gray; font-weight: 100; text-align:left;}
</style>
</head>
<body>
<%
	int sYear = 2020;
	int sMonth = 12;
%>
    <h3><%=sYear%> 년 <%=sMonth%> 월</h3>
    <table width="400" align="left" cellspacing="1" bgcolor="black">
        <tr bgcolor="white" height="30">
            <td align="center" width="60">일</td>
            <td align="center" width="60">월</td>
            <td align="center" width="60">화</td>
            <td align="center" width="60">수</td>
            <td align="center" width="60">목</td>
            <td align="center" width="60">금</td>
            <td align="center" width="60">토</td>
        </tr>
        <%
        	for (int i = 0; i < 6; i++) {%>
        	<tr bgcolor="white" height="30">
        		<%for (int j = 0; j < 7; j++) {%>
        			<td></td>
        		<%}%>
       		</tr>
        <%}%>
    </table>
</body>
</html>