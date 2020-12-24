<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_Action_from</title>
</head>
<body>
<!--
    하나의 작업단위(회원가입, 로그인, 게시물 등록 등)을 구성하기 위해 사용되는 입력란, 선택란들은
    작업단위로 구분되어지는 form 태그안에 넣어서 사용합니다.
    	name : 스크립트에서 구분하여 부를 이름으로 사용
    	action : 전달받아 처리해줄 대상 파일
    	method : 전달방식, get은 일반전송방식, post는 감춰진 전달방식
 -->
    <form name="reg_frm" action="04_Action_to.jsp" method="GET">
        이름 : <input type="text" name="name"><br>
        주민등록번호 : <input type="text" name="jumin_1"> -
        <input type="text" name="jumin_2"><br>
        아이디 : <input type="text" name="id"><br>
        비밀번호 : <input type="password" name="pwd"><br>
        비밀번호확인 : <input type="password" name="pwd_re"><br>
        <input type="submit" value="회원가입">
    </form>
    <!--
    	회원가입 버튼이 클릭되면 action에 있는 파일이름과 각 입력란의 name, value들이 조합되어
    	이동합니다.
    	http://localhost:8090/WEB_JSP_SERVLET/01/04_Action_to.jsp?name=${name}&jumin_1=${jumin_1}&jumin_2=${jumin_2}&id=${id}&pwd=${pwd}&pwd_re=${pwd_re}
     -->
</body>
</html>