<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
당신이 입력한 정보입니다.(pure) <hr>
id : <%= request.getParameter("userid")%> <br>
pw : <%= request.getParameter("userpwd")%> <br>
<br>

당신이 입력한 정보입니다.(el) <hr>
id : ${param.userid} <br>
pw : ${param["userpwd"]}

<!-- EL문법은 전달된 파라미터가 null값일 때 equals()를 사용한 문자들과 비교에서 발생하는 문법의 오류도 해결해줍니다. -->
equals()의 사용 결과 : error - equals메서드는 "null 값"으로 비교할 때 오류를 발생시킵니다. <br>
requeset.getParameter("userid").equals("hong") - error <br><br>
<hr>
== 연산자 사용 결과 :  \${param.id == "hong"} ->${param.id == "hong"}
<br><br><br>

jsp 문법상 equals()에서 에러발생을 해결하는 방법
<pre> <!-- <pre>태그 : 입력한 그대로를 화면에 보여주는 태그 : 주로 코딩 내역을 화면에 표시할 때 사용 -->
if (request.getParameter("id") != null) {
    if (request.getParameter("id").equals("hong")) {

    }
} else {
    out.print("id가 없습니다.");
}
</pre>

</body>
</html>