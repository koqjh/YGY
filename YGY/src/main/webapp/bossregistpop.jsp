<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RegBossServlet" method="post">
	<input type="text" name="id" placeholder="아이디"><input type="button" value="아이디 체크" onclick="idcheck()"><br>
	<input type="text" name="pw" placeholder="비밀번호"><br>
	<input type="text" name="name" placeholder="이름"><br>
	<input type="text" name="tel" placeholder="전화번호 - 빼고 적어주세요"><br>
	<input type="text" name="address" placeholder="주소"><br>
	<input type="submit" value="회원가입"><br>
	<a href="registpop.jsp">일반 회원가입</a> /
	<a href="bossregistpop.jsp">사장님 회원가입</a>
</form>
<script>
	function idcheck(){
		const xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
			
		}
		xhttp.open("GET", "IdCheckServlet?name=id", true);
		xhttp.send();
	}
</script>
</body>
</html>