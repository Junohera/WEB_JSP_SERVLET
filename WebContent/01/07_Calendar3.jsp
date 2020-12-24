<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Calendar" %> <!-- JSP IMPORT COMMAND -->

    <%!
    /*
        이 영역은 변수나 객체를 선언하는 용도로 많이사용합니다.(JSP영역표기와 !를 함께 사용하여 선언부로 사용)
    */
    	Calendar toDay = Calendar.getInstance(); // 오늘날짜의 데이트객체반환
        int sYear = toDay.get(Calendar.YEAR); // 년도 추출
        int sMonth = toDay.get(Calendar.MONTH) + 1; // 월 추출
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_Calendar3</title>
<style>
    table>tbody>tr>td{font-size: 90%; font-weight: bold;text-align:center;}
    table>tbody>tr>td:first-child{color:red;}
    table>tbody>tr>td:last-child{color:blue;}
    .notUse {color: gray; font-weight: 100; text-align:left;}
</style>
</head>
<body>
<%
	if (request.getParameter("sYear") != null) { // 입력값이 있을경우 시작년월을 입력값으로 대체
		sYear = Integer.parseInt(request.getParameter("sYear"));
		sMonth = Integer.parseInt(request.getParameter("sMonth"));
	}

	int pYear = sYear;
	int pMonth = 0;
	int nYear = sYear;
	int nMonth =0;
	
	if (sMonth-1 == 0) {
		pYear--;
		pMonth = 12;
	} else pMonth = sMonth - 1;

	if (sMonth+1 == 13) {
		nYear++;
		nMonth = 1;
	} else nMonth = sMonth + 1;
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
        	toDay.set(sYear, sMonth-1, 1); // 현재연도, 현재월, 1일
        	Calendar eDayByToday = Calendar.getInstance();
        	eDayByToday.set(sYear, sMonth, 1); // 다음달 1일
        	eDayByToday.add(Calendar.DATE, -1); // 다음달 1일 + (-1일) => 이달의 마지막 일자
        	
        	// 이전달
        	Calendar prevMonthDay = Calendar.getInstance();
        	prevMonthDay.set(pYear, pMonth, 1);
        	Calendar eDayByPrevMonth =  Calendar.getInstance();
        	eDayByPrevMonth.set(sYear, sMonth-1, 1);
        	eDayByPrevMonth.add(Calendar.DATE, -1);
        	// eDayByPrevMonth.get(Calendar.DATE); // 이전달의 마지막일자
        	
        	int acc = 1;
        	int START_WEEK = toDay.get(Calendar.DAY_OF_WEEK); // 시작날짜의 요일
        	int blank = START_WEEK - 1;
        	int blank4PrevDay = eDayByPrevMonth.get(Calendar.DATE)-(blank-1);
        	int blank4NextDay = 1;
        	for (int i = 0; i < 6; i++) {%>
        	<tr bgcolor="white" height="30">
        		<%for (int j = 0; j < 7; j++) {%>
        			<td>
        				<%if (blank > 0) {%>
        					<span class="notUse"><%=blank4PrevDay++%></small>
       						<%blank--;%>
        				<%} else {%>
	        				<%if (acc <= eDayByToday.get(Calendar.DATE)) {%>
	       						<%=acc++%>
	        				<%} else {%>
	        					<span class="notUse"><%=blank4NextDay++%></span>
	        				<%}%>
        				<%}%>
        			</td>
        		<%}%>
       		</tr>
        <%}%>
        <tr bgcolor="white" height="30">
        	<td colspan="7">
        		<input type="button" value="이전달" onClick="location.href='07_Calendar3.jsp?sYear=<%=pYear%>&sMonth=<%=pMonth%>'">
        		<input type="button" value="다음달" onClick="location.href='07_Calendar3.jsp?sYear=<%=nYear%>&sMonth=<%=nMonth%>'">
        	</td>
        </tr>
    </table>
</body>
</html>