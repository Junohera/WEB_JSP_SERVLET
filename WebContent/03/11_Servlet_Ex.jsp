<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form method="" action="../JoinDo">
        <label for="userId">id: </label>
        <input type="text" name="userId">
        <br>
        <label for="userPw">pwd: </label>
        <input type="password" name="userPw">

        <hr>

        <label for="gender1">
            <input type="radio" name="gender" value="1" id="gender1"> 
            남
        </label>
        <label for="gender2">
            <input type="radio" name="gender" value="2" id="gender2"> 
            여
        </label>
        
        <hr>

        <label for="chk_mail">메일 정보 수신 여부 : </label>
        <input type="radio" name="chk_mail" value="1"> 수신
        <input type="radio" name="chk_mail" value="0"> 거부
        
        <hr>

        <label for="content">간단한 가입인사를 적어주세요</label>
        <br>
        <textarea name="content" cols="35" rows="3"></textarea>
        
        <hr>

        <label for="item">구입항목</label>
        <br>
        <label for="itemA"><input type="checkbox" name="item" value="A" id="itemA">신발</label>
        <label for="itemB"><input type="checkbox" name="item" value="B" id="itemB">가방</label>
        <label for="itemC"><input type="checkbox" name="item" value="C" id="itemC">벨트</label>
        <br>
        <label for="itemD"><input type="checkbox" name="item" value="D" id="itemD">모자</label>
        <label for="itemE"><input type="checkbox" name="item" value="E" id="itemE">시계</label>
        <label for="itemF"><input type="checkbox" name="item" value="F" id="itemF">쥬얼리</label>
        
        <hr>

        <span style="float: left; margin-right: 20px;">
            <label for="job">직업</label>
            <select name="job" id="job">
                <option value="">선택하세요</option>
                <option value="I">학생</option>
                <option value="II">컴퓨터/인터넷</option>
                <option value="III">언론</option>
                <option value="IV">공무원</option>
                <option value="V">군인</option>
                <option value="VI">서비스업</option>
                <option value="VII">교육</option>
            </select>
        </span>
        <br>

        <label for="interest" style="float: left;">관심분야</label>
        <select name="interest" id="interest" size="5" multiple="multiple">
            <option value="가">에스프레소</option>
            <option value="나">로스팅</option>
            <option value="다">생두</option>
            <option value="라">원두</option>
            <option value="마">핸드드립</option>
        </select>
        <br>
        <br>

        <input style="float:left; margin-right: 50px;" type="submit" value="post">
    </form>
    <%
    	String reason = (String)request.getAttribute("reason");	
    	
    	if (reason != null) {
    		out.print("<br><hr><h1>"+ reason +"</h1>");
    	}
    %>
</html>