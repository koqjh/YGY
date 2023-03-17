<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="BossLoginServlet" method="post">
	<input type="text" name="id" placeholder="아이디">
	<input type="text" name="pw" placeholder="비밀번호">
	<input type="submit" value="로그인">
</form>
	<a href="">아이디 찾기</a> |
	<a href="">비밀번호 찾기</a><br>
	<a href="bossregistpop.jsp">회원 가입</a>
</body>
</html>