<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/jquery.serializeObject.js"></script>


<style>
*, *:before, *:after {-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box;margin:0;padding:0}
nav{font-family:sans-serif;text-transform:uppercase;font-size:16px;color:#fff;overflow: hidden;margin: 0;}
nav a{text-decoration:none;color:#fff}
#header{background:#1E262D;width:100%;position:relative}
#header:after{content:"";clear:both;display:block}
.search{float:right;padding:28px}
input{border:none;padding:10px;border-radius:20px}
.logo{float:left;padding:26px 0 26px;font-weight: bold;}
.logo a{font-size:28px;display:block;padding:0 0 0 20px}
nav{float:right;}
nav>ul{float:left;position:relative}
nav li{list-style:none;float:left}
nav li a{float:left;padding:35px}
nav li a:hover{background:#2C3E50}
nav li ul{display:none}
nav li:hover ul{display:inline}
nav li li{float:none}


nav li li a{float:none;color:#333;display:block;padding:8px 10px;border-radius:3px;font-size:13px}
nav li li a:hover{background:#bdc3c7;background:#FAFBFB}
#one_table tr, #one-table td{
height:10px;
width:10px;
}
#articleView_layer {
	position: fixed;
	top: 0px;
	left: 0px;
	right: 0px;
	height: 100%;
	display: none;
}

#articleView_layer.open {
	display: block;
}

#articleView_layer #bg_layer {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	z-index: 100
}

#contents_layer {
	position: relative;
	width: 400px;
	height: 400px;
	margin: 0px auto;
	padding: 20px;
	border: 2px solid #555;
	background: #fff;
	font-size: 12px;
	z-index: 200;
	color: #767676;
	overflow: scroll
}

#grid {
display: grid;
      grid-template-columns: 300px 1fr;
      display:flex;

}
</style>

</head>
<body>
<%@include file="./includes/header.jsp" %>

	<h1>boardList.jsp</h1>

	<c:if test="${!empty id}">
		<div align="right">
			<form name="logoutFrm" action="logout" method="post">
				<a href="javascript:document.logoutFrm.submit()">로그아웃</a>
			</form>
		</div>
	</c:if>

	<!-- 회원정보 출력:MINFO view -->
	<div id = "grid">
	
	<table id="one_table">
		<tr height="20px">
			<td width=auto bgcolor="royalblue" align="center">ID</td>
			<td>${id}</td>
		</tr>
		
	</table>
<div>

	<!-- 글쓰기 -->
	<form action='writefrm'>
		<button>글쓰기</button>
	</form>
	
	<table>
		<tr bgcolor="red" height="30">
			<th width="100">번호</th>
			<th width="100">제목</th>
			<th width="100">작성자</th>
			<th width="100">작성일</th>
			<th width="100">조회수</th>
			<th width="100">추천수</th>
		</tr>
		<c:forEach var="board" items="${top3List}">
			<tr height="20">
				<td align="center">${board.b_num}</td>
				<td align="center"><a href="contents?b_num=${board.b_num}&b_id=${board.b_id}">
						${board.b_title}</a></td>
				<td align="center">${board.b_id}</td>
				<td align="center">${board.b_date}</td>
				<td align="center">${board.b_views}</td>
				<td align="center">${board.b_thumbs}</td>
			</tr>
		</c:forEach>
	</table>

	<table>
		<tr bgcolor="royalblue" height="30">
			<th width="100">번호</th>
			<th width="100">제목</th>
			<th width="100">작성자</th>
			<th width="100">작성일</th>
			<th width="100">조회수</th>
			<th width="100">추천수</th>
		</tr>
		<c:forEach var="board" items="${bList}">
			<tr height="20">
				<td align="center">${board.b_num}</td>
				<td align="center"><a href="contents?b_num=${board.b_num}&b_id=${board.b_id}">
						${board.b_title}</a></td>
				<td align="center">${board.b_id}</td>
				<td align="center">${board.b_date}</td>
				<td align="center">${board.b_views}</td>
				<td align="center">${board.b_thumbs}</td>
			</tr>
		</c:forEach>
	</table>
	
	<!-- 페이징 --><%-- 
	<div align="center">${paging}</div>
	 --%>
	</div>
</div>
<script type="text/javascript">
$(window).bind('pageshow', function(event){
	if ( event.originalEvent.persisted){
		location.reload();
	}
	else{
	}
})	
</script>

</body>
</html>