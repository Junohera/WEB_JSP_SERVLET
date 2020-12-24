<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int age = Integer.parseInt(request.getParameter("age"));

	if (age <= 19) { // 19미만이면 이전페이지로 이동하는 스크립트명령
%>
	<script>
		alert("19세 미만이므로 입장 불가능");
		history.go(-1);
	</script>
<%
	} else {
		// 19미만이 아니면 request내부에 Attribute라는 저장소에 name이라는 이름으로 "홍길동"을 저장해두고
		// 08_Forward_ok.jsp로 이동(forward)시킵니다.
		// 08_ForwardResult.jsp에서는 이전페이지에서 보내준 request와 response를 전달인수로 받아 name값을 꺼내 사용할 수 있습니다.
		
		request.setAttribute("name", "홍길동"); // request의 attribute저장소에 저장
		RequestDispatcher dispatcher = request.getRequestDispatcher("08_Forward_ok.jsp"); // 페이지 설정
		dispatcher.forward(request, response); // 해당 페이지로 request와 response를 갖고 포워딩
		
		/*
			현재 페이지의 request객체의 수명은 파라미터가 전달되는 다음 페이지까지입니다.
			보통 파라미터를 통해서 정보를 전달하고 request.getParameter()를 사용하여 전달된 값을 추출하여 사용하지만,
			위의 RequestDispatcher는 전달인수대신 request내부의 Attribute를 사용하여 전달인자를 저장하고, 
			수명을 다할지 모를 이전 페이지의 request와 response를 전달인수로 전달하여
			forward라는 명령으로 페이지를 이동한 다음 이동한 페이지에서 Attribute를 사용하게 합니다.
		*/
	}
%>