<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String id = (String)session.getAttribute("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	if(id == null){
%>
<a href="main.jsp" onclick="login()">로그인</a>
<%
	}else if(id != null){
%>
<%=id %>사장님 /<a href="logoutForm.jsp">로그아웃</a>
<input type="hidden" id="idcheck" value="<%=id %>">
<%
	}
%>
<form action="regcompany.jsp" method="post">
	<input type="submit" value="업체 등록">
	<input type="button" value="업체 리스트 확인" onclick="companylist()">
</form>
<script>
const id = document.getElementById("idcheck").value;
function companylist() {
	const xhttp = new XMLHttpRequest();
	xhttp.onload = function() {
		let obj = JSON.parse(this.responseText);
		for(let i = 0; i < obj.length; i++){

			  
		  }
	    }
	  xhttp.open("GET", "ajax_info.txt", true);
	  xhttp.send();
	}
</script>
</body>
</html>