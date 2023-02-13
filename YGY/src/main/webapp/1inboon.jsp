<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="allow.css">
</head>
<body>
	<div>
		<input type="button" value="로그인" onclick="login()">
	</div>
	<div id="list">
		<ul>
			<li id="1inboon">1인분</li>
			<li id="chicken">치킨</li>
			<li id="pizza">피자</li>
			<li id="hamburger">햄버거</li>
			<li id="pighocks">족발</li>
			<li id="porkcutlet">돈까스</li>
			<li id="meat">고기</li>
			<li id="noodle">국수</li>
			<li id="stew">찌개</li>
			<li id="Asia">아시아</li>
			<li id="korean cuisine">한식</li>
			<li id="chinese food">중식</li>
			<li id="form">양식</li>
			<li id="a solar eclipse">일식</li>
			<li id="school food">분식</li>
			<li id="midnight meal">야식</li>
			<li id="a lunch box">도시락</li>
			<li id="fast food">패스트푸드</li>
			<li id="malatang">마라탕</li>
			<li id="dessert">디저트</li>
		</ul>
	</div>
<form>
	<table border="1">
		
	</table>
</form>
	
<script>
function login(){
	alert("나와라잇");
	window.open("registpop.jsp");
}

const clicks = document.querySelector("#list");
const divid = clicks.id;

clicks.addEventListener("click", click1);

function click1(event) {
	let target = event.target;
	   if(target.id == "1inboon"){
		   alert("1인분 나왔다");
	   }else if(target.id == "chicken"){
		   alert("치느님 등장하셨다.")
	   }else if(target.id == "pizza"){
		   alert("피자다.")
	   }else if(target.id == "hamburger"){
		   alert("햄 버억.")
	   }else if(target.id == "pighocks"){
		   alert("내발.")
	   }else if(target.id == "porkcutlet"){
		   alert("날으는 돈까스.")
	   }else if(target.id == "meat"){
		   alert("삼겹살에 소주한잔 하고싶노.")
	   }else if(target.id == "noodle"){
		   alert("잔치국수 하입시다.")
	   }else if(target.id == "stew"){
		   alert("초당순두부짬뽕.")
	   }else if(target.id == "Asia"){
		   alert("월남싸이야.")
	   }else if(target.id == "korean cuisine"){
		   alert("밥.")
	   }else if(target.id == "chinese food"){
		   alert("짱꿜라.")
	   }else if(target.id == "form"){
		   alert("이테리 프랑스 봉쥬르.")
	   }else if(target.id == "a solar eclipse"){
		   alert("니뽄 사시미 슉슈슉슈슈슉슈슉.")
	   }else if(target.id == "school food"){
		   alert("떡볶이 먹고싶다.")
	   }else if(target.id == "midnight meal"){
		   alert("야식은 술이랑 같이.")
	   }else if(target.id == "a lunch box"){
		   alert("추억의 도시락.")
	   }else if(target.id == "fast food"){
		   alert("빨리달리는 음식.")
	   }else if(target.id == "malatang"){
		   alert("말라이 탕꿔이.")
	   }else if(target.id == "dessert"){
		   alert("소금빵 먹고싶노.")
	   }
	   
	   
	const xhttp = new XMLHttpRequest();
	xhttp.onload = function() {
	}
	xhttp.open("GET", "ajax_info.txt", true);
	xhttp.send();
}
</script>
</body>
</html>