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
<script>
function login(){
	alert("나와라잇");
	window.open("loginpop.jsp", "", "width=450, height=200");
}
</script>
</body>
</html>