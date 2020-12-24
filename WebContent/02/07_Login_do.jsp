<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLEncoder"%>
<%
    /*
        현재 파일은 화면에 표시할 페이지가 아니고, 전달된 아이디와 비밀번호가 유효한 값인지 판단하고,
        유효하면 login_ok.jsp로 이동하고, 유효하지 않으면 LoginForm.jsp로 돌아가는 역할만 할 파일이라
        HTML몸체 없이 작성
    */

    String userId = request.getParameter("userId");
    String userPwd = request.getParameter("userPwd");
    String name = "홍길동";

    if (userId.equals("hong") && userPwd.equals("1234")) {
        // jsp의 페이지 이동 명령 : response.sendRedirect();
        // response.sendRedirect("07_Login_ok.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
        response.sendRedirect("07_Login_ok.jsp?name=GilDong");
    } else {
        response.sendRedirect("07_LoginForm.jsp");
    }

    // form 태그도 없고, input type="text"도 없으며, submit버튼도 없는 상태에서 다음페이지에
    // 현재페에지가 갖고있는 정보를 보내려면 위와같이 주소 url에 전달인수로 전달하는 방법이 있습니다.
%>