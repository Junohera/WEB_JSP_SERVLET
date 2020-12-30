<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>악세사리</h2>
    관심항목을 선택하세요.
    <hr>
    <form method="get" action="09_ForEach_Checkbox02.jsp">
        <label for="item_1">
            <input type="checkbox" name="item" value="신발" id="item_1">신발
        </label>
        <label for="item_2">
            <input type="checkbox" name="item" value="가방" id="item_2">가방
        </label>
        <label for="item_3">
            <input type="checkbox" name="item" value="벨트" id="item_3">벨트
        </label>
        <br>
        <label for="item_4">
            <input type="checkbox" name="item" value="모자" id="item_4">모자
        </label>
        <label for="item_5">
            <input type="checkbox" name="item" value="시계" id="item_5">시계
        </label>
        <label for="item_6">
            <input type="checkbox" name="item" value="쥬얼리" id="item_6">쥬얼리
        </label>
        <br>
        <input type="submit" value="send">
    </form>
</body>
</html>