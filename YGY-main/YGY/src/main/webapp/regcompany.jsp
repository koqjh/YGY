<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RegTypeServlet" method="post" encType="multipart/form-data">
	종류 : <input type="text" name="type"><br>
	업체명 : <input type="text" name="companyname"><br>
	지역 : <input type="text" name="area"><br>
	로고 : <input type="file" name="logo"><br>
	사장님 명 : <input type="text" name="bossname"><br>
	전화 번호 : <input type="text" name="companytel"><br>
	사업자등록증 : <input type="text" name="businesslicense"><br>
	메뉴 : <input type="text" name="menu"><br>
	리뷰 : <input type="text" name="review"><br>
	정보 : <input type="text" name="information"><br>
	<input type="submit" value="업체 등록">		
</form>
</body>
</html>