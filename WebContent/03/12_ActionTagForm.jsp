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
        String userId = request.getParameter("userId");
        String loginCheck = request.getParameter("loginCheck");

        if (userId != null) {
            out.print("<input type=\"hidden\" name=\"req_userId\" id=\"req_userId\" value=\"" + userId +"\">");
        } else {
            out.print("<input type=\"hidden\" name=\"req_userId\" id=\"req_userId\" value=\"\">");
        }

        if (loginCheck != null) {
            out.print("<input type=\"hidden\" name=\"req_loginCheck\" id=\"req_loginCheck\" value=\"" + loginCheck +"\">");
        } else {
            out.print("<input type=\"hidden\" name=\"req_loginCheck\" id=\"req_loginCheck\" value=\"\">");
        }
    %>
    <form action="12_ActionTag_do.jsp">
        id: <input type="text" name="userId" id="userId"> <br>
        pw: <input type="password" name="userPw"> <br>
        <label for="user">
            <input type="radio" name="loginCheck" value="user" id="user"> 사용자
        </label>
        <label for="manager">
            <input type="radio" name="loginCheck" value="manager" id="manager"> 관리자
        </label>
        <hr>
        <input type="submit" value="login">
    </form>
    
    <script>
		window.onload = function() {
			var req_userId = document.getElementById("req_userId").value;
	        var req_loginCheck = document.getElementById("req_loginCheck").value;
	        
	        document.getElementById("userId").value = req_userId;
	        
	        if (req_loginCheck === "user") {
	        	document.getElementById("user").checked = true;
	        } else if (req_loginCheck === "manager"){
	        	document.getElementById("manager").checked = true;
	        }
		};
	</script>
</body>
</html>