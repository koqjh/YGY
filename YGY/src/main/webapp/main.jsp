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
<a href="main.jsp" onclick="login()">로그인</a>
<%=id %>/<a href="">로그아웃</a>
<form>
	<table border="1">
		<tr>			
			<th>
				<a href="menu.jsp?id=1indoon">1인분</a>				
			</th>
			<th><a href="menu.jsp?id=chicken"><img src="img/메인페이지/메인페이지 치킨 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=pizza"><img src="img/메인페이지/메인페이지 피자 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=hamburger"><img src="img/메인페이지/메인페이지 햄버거 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=pighocks"><img src="img/메인페이지/메인페이지 족발 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=porkcutlet"><img src="img/메인페이지/메인페이지 돈까스 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=meat"><img src="img/메인페이지/메인페이지 고기 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=noodle"><img src="img/메인페이지/메인페이지 국수 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=stew"><img src="img/메인페이지/메인페이지 찌개 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=asia"><img src="img/메인페이지/메인페이지 아시아 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=koreanfood"><img src="img/메인페이지/메인페이지 한식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=chinesefood"><img src="img/메인페이지/메인페이지 중식 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=form"><img src="img/메인페이지/메인페이지 양식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=japanfood"><img src="img/메인페이지/메인페이지 일식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=schoolfood"><img src="img/메인페이지/메인페이지 분식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=midnightmeal"><img src="img/메인페이지/메인페이지 야식 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=lunchbox"><img src="img/메인페이지/메인페이지 도시락 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=fastfood"><img src="img/메인페이지/메인페이지 페스트푸드 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=malatang"><img src="img/메인페이지/메인페이지 마라탕 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=dessert"><img src="img/메인페이지/메인페이지 디저트 로고.jpg"></a></th>
		</tr>
	</table>
</form>
<script>
function login(){
	alert("나와라잇");
	window.open("loginpop.jsp", "width=450, height=200");
}
</script>
</body>
</html>