<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_CheckBox_from</title>
</head>
<body>
	<h2>악세사리</h2>
	<p>관심항목을 선택하세요.</p>
	<hr>
	<form method="GET" action="05_CheckBox_to.jsp">
		<label for="shoes"><input id="shoes" type="checkbox" name="item" value="shoes"> 신발</label>
		<label for="bag"><input id="bag" type="checkbox" name="item" value="bag"> 가방</label>
		<label for="belt"><input id="belt" type="checkbox" name="item" value="belt"> 벨트</label>
		<br>
		<label for="cap"><input id="cap" type="checkbox" name="item" value="cap"> 모자</label>
		<label for="watch"><input id="watch" type="checkbox" name="item" value="watch"> 시계</label>
		<label for="diamond"><input id="diamond" type="checkbox" name="item" value="diamond"> 쥬얼리</label>
		<hr>
		<input type="submit" value="전송">
	</form>
	<!-- checkBox는 다른 입력선택란과 달리 value의 값이 전달됩니다. -->

</body>
</html>