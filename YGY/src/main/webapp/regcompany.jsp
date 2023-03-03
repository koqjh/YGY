<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RegTypeServlet" method="post">
	종류 : <input type="text" id="type"><br>
	업체명 : <input type="text" id="companyname"><br>
	지역 : <input type="text" id="area"><br>
	사장님 명 : <input type="text" id="bossname"><br>
	전화 번호 : <input type="text" id="companytel"><br>
	사업자등록증 : <input type="text" id="businesslicense"><br>
	메뉴 : <input type="text" id="menu"><br>
	리뷰 : <input type="text" id="review"><br>
	정보 : <input type="text" id="information"><br>
	<input type="submit" value="업체 등록">		
</form>
</body>
</html>