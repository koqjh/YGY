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
<h1><a href="main.jsp">요기요</a></h1>
<div id="login">
<%	
	if(id == null){
%>
<a href="main.jsp" onclick="login()">로그인</a>
<%
	}else if(id != null){
%>
<%=id %>/<a href="logoutForm.jsp">로그아웃</a>
<%
	}
%>
</div>
<form>
	<table border="1">
		<tr>
			<th>
				<a href="menu.jsp?id=1indoon">1인분</a>				
			</th>
			<th><a href="menu.jsp?id=chicken&num=1"><img src="img/메인페이지/메인페이지 치킨 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=pizza&num=1"><img src="img/메인페이지/메인페이지 피자 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=hamburger&num=1"><img src="img/메인페이지/메인페이지 햄버거 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=pighocks&num=1"><img src="img/메인페이지/메인페이지 족발 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=porkcutlet&num=1"><img src="img/메인페이지/메인페이지 돈까스 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=meat&num=1"><img src="img/메인페이지/메인페이지 고기 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=noodle&num=1"><img src="img/메인페이지/메인페이지 국수 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=stew&num=1"><img src="img/메인페이지/메인페이지 찌개 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=asia&num=1"><img src="img/메인페이지/메인페이지 아시아 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=koreanfood&num=1"><img src="img/메인페이지/메인페이지 한식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=chinesefood&num=1"><img src="img/메인페이지/메인페이지 중식 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=form&num=1"><img src="img/메인페이지/메인페이지 양식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=japanfood&num=1"><img src="img/메인페이지/메인페이지 일식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=schoolfood&num=1"><img src="img/메인페이지/메인페이지 분식 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=midnightmeal&num=1"><img src="img/메인페이지/메인페이지 야식 로고.jpg"></a></th>
		</tr>
		<tr>
			<th><a href="menu.jsp?id=lunchbox&num=1"><img src="img/메인페이지/메인페이지 도시락 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=fastfood&num=1"><img src="img/메인페이지/메인페이지 페스트푸드 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=malatang&num=1"><img src="img/메인페이지/메인페이지 마라탕 로고.jpg"></a></th>
			<th><a href="menu.jsp?id=dessert&num=1"><img src="img/메인페이지/메인페이지 디저트 로고.jpg"></a></th>
		</tr>
	</table>
</form>
<div>
	<a href="conditions.jsp">이용약관</a>
	<a href="informationprocessing.jsp">개인정보처리방침</a>
	<a href="point.jsp">포인트정책</a>
	<a href="introduction.jsp">회사소개</a>
	<a href="ygyboss.jsp">요기요사장님</a>
	<a href="importpoint">입점문의</a>
	<a href="announcement">공지사항</a>
	<!-- 올라가자 -->
</div>
<footer>
<h1>요기요</h1>
<h2>주식회사 위대한상상</h2>
<p>서울시 서초구 서초대로 | 대표이사 : 홍길동 | 사업자등록번호 : 000 - 00 - 00000 | 통신판매업신고 : | 제휴문의 : | 고객만족센터 : | 호스팅 제공사</p>
<p>주식회사 위대한상상은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여 요기요에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해와 대해 주식회사 위대한 상상은 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. Copyright YOGIYO. All Rights Reserved.</p>
</footer>
<script>
function login(){
	alert("나와라잇");
	window.open("loginpop.jsp", "", "width=450, height=200");
}
</script>
</body>
</html>