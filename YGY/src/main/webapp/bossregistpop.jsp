<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${bed }
<form action="RegBossServlet" method="post" name="frm">
	<input type="hidden" name="hidden" id="hidden" value="0">
	<input type="text" name="id" id="id" placeholder="아이디" value="${param.id }">
	<input type="button" value="아이디 중복 체크" onclick="return idcheck()"><br>
	<input type="text" name="pw" placeholder="비밀번호"><br>
	<input type="text" name="name" placeholder="이름"><br>
	<input type="text" name="tel" placeholder="전화번호 - 빼고 적어주세요"><br>
	<input type="text" name="address" placeholder="주소"><br>
	<input type="submit" value="회원가입" onclick="return click()"><br>
	<a href="bossregistpop.jsp">사장님 회원가입</a>
</form>
<script>
function idcheck(){
	if(document.frm.id.value == ""){
		alert("id를 입력하세요.");
		document.frm.id.focus();
		return;
	}
	const xhttp = new XMLHttpRequest();
	xhttp.onload = function() {
		
	}
	let param = document.frm.id.value;				
	
	xhttp.open("POST", "RegBossServlet?id=" + param);
	xhttp.send();
}

function click(){
	if(document.frm.id.value == "") {
		alert("id를 입력하세요.");
		document.frm.id.focus();
		return false;
	}else if(document.frm.pw.value == "") {
		alert("패스워드를 입력하세요.");
		document.frm.pw.focus();
		return false;
	}else if(document.frm.name.value == "") {
		alert("이름을 입력하세요.");
		document.frm.name.focus();
		return false;
	}else if(document.frm.tel.value == "") {
		alert("전화번호를 입력하세요.");
		document.frm.tel.focus();
		return false;
	}else if(document.frm.address.value == "") {
		alert("주소를 입력하세요.");
		document.frm.address.focus();
		return false;
	}else{
		self.close();
		return true;
	}
}
</script>
</body>
</html>