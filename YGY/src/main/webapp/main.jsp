<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String id = (String)session.getAttribute("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<h1>요기요</h1>
<hr>
<%=id %>/<a href="">로그아웃</a>
<form>
	<table border="1">
		<tr>			
			<th>
				<div id="1inboon">
					<a href="1inboon.jsp" id="1inboon">1인분</a>
				</div>
			</th>
			<th><a href="chickin.jsp"><img id="chicken" src="img/메인페이지/메인페이지 치킨 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 피자 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 햄버거 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 족발 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 돈까스 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 고기 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 국수 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 찌개 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 아시아 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 한식 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="joongsik" src="img/메인페이지/메인페이지 중식 로고.jpg"></a></th>
		</tr>
		<tr>		
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 양식 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 일식 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 분식 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 야식 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 도시락 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 페스트푸드 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="maratang" src="img/메인페이지/메인페이지 마라탕 로고.jpg"></a></th>
			<th><a href="maratang.jsp"><img id="yangsik" src="img/메인페이지/메인페이지 디저트 로고.jpg"></a></th>
		</tr>
	</table>
</form>
</body>
</html>