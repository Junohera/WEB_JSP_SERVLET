<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String userid = request.getParameter("userid");
    String nickname = request.getParameter("nickname");
    String pwd = request.getParameter("pwd");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
%>

<jsp:useBean id="member" class="com.juno.dto.MemberBean" scope="request" />
<jsp:setProperty name="member" property="name" value="<%=name%>"/>
<jsp:setProperty name="member" property="userid" value="<%=userid%>"/>
<jsp:setProperty name="member" property="nickname" value="<%=nickname%>"/>
<jsp:setProperty name="member" property="pwd" value="<%=pwd%>"/>
<jsp:setProperty name="member" property="email" value="<%=email%>"/>
<jsp:setProperty name="member" property="phone" value="<%=phone%>"/>

<%
    // 액션태그의 scope="request"가 다음의 코드의 역할을 수행
    // => request.setAttribute("member", member);
    RequestDispatcher dispatcher = request.getRequestDispatcher("08_useBeanActionTag03.jsp");
    dispatcher.forward(request, response);

    response.sendRedirect("/*path*/");

    RequestDispatcher dp = request.getRequestDispatcher("/*path*/");
    dp.forward(request, response);

%>