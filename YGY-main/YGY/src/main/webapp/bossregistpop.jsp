<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${bed }
<form action="RegBossServlet" method="post" name="frm">
	<input type="text" name="id" id="id" placeholder="아이디">
	<input type="button" value="중복 확인" onclick="return idcheck()"><br>
	<input type="hidden" name="idcheckin" value="iduncheck">
	<div id="demo"></div>
	<input type="text" name="pw" id="pw" placeholder="비밀번호"><br>
	<input type="text" name="name" id="name" placeholder="이름"><br>
	<input type="text" name="tel" id="tel" placeholder="전화번호 - 빼고 적어주세요"><br>
	<input type="submit" value="회원가입" onclick="return click()"><br>
</form>
<script>
function idcheck(){
	if(document.frm.id.value == ""){
		alert("id를 입력하세요.");
		document.frm.id.focus();
		return false;
	}else{
		document.querySelector("input[name='idcheckin']").value = "idcheck";
	}
	const xhttp = new XMLHttpRequest();
	xhttp.onload = function() {
		let no = document.getElementById("demo").innerHTML = this.responseText;
		
	}
	let param = document.frm.id.value;
	
	xhttp.open("POST", "BossIdCheckServlet?id=" + param);
	xhttp.send();
}

function click(){
	if(document.frm.idcheckin.value != "idcheck") {
		alert("id중복 체크를 해주세요.");
		document.frm.id.focus();
		return false;
	}else if(document.frm.id.value == "") {
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
	}else{
		return true;
		self.close();
	}
}
</script>
</body>
</html>