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


<style>
*, *:before, *:after {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0;
	padding: 0
}

body {
	font-family: sans-serif;
	text-transform: uppercase;
	font-size: 16px;
	overflow: hidden;
	margin: 0;
}

a, button {
	cursor: pointer;
	text-decoration: none;
}

nav a, #header a {
	text-decoration: none;
	color: #fff
}

#header {
	background: #1E262D;
	width: 100%;
	position: relative;
}

#header:after {
	content: "";
	clear: both;
	display: block
}

.search {
	float: right;
	padding: 28px
}

input {
	border: none;
	padding: 10px;
	border-radius: 20px
}

.logo {
	float: left;
	padding: 26px 0 26px;
	font-weight: bold;
}

.logo a {
	font-size: 28px;
	display: block;
	padding: 0 0 0 20px
}

nav {
	float: right;
}

nav>ul {
	float: left;
	position: relative
}

nav li {
	list-style: none;
	float: left
}

nav li a {
	float: left;
	padding: 35px
}

nav li a:hover {
	background: #2C3E50
}

nav li ul {
	display: none
}

nav li:hover ul {
	display: inline
}

nav li li {
	float: none
}

nav li li a {
	float: none;
	color: #333;
	display: block;
	padding: 8px 10px;
	border-radius: 3px;
	font-size: 13px
}

nav li li a:hover {
	background: #bdc3c7;
	background: #FAFBFB
}

html {
	font-family: "Noto Sans KR", sans-serif;
}

#one_table tr, #one-table td {
	height: 10px;
	width: 10px;
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

.tbl_type, .tbl_type th, .tbl_type td {
	border: 0
}

.tbl_type a {
	color: #383838;
	text-decoration: none
}

.tbl_type {
	width: 100%;
	border-bottom: 1px solid #999;
	color: #666;
	font-size: 12px;
	table-layout: fixed
}

.tbl_type caption, .tbl_type .frm label {
	display: none
}

.tbl_type th {
	padding: 5px 0 4px;
	border-top: none;
	border-bottom: solid 1px #b2b2b2;
	background-color: #f1f1f4;
	color: #333;
	font-weight: bold;
	line-height: 18px;
	vertical-align: top;
}

.tbl_type td {
	padding: 8px 0 5px;
	border-bottom: solid 1px #d2d2d2;
	text-align: center
}

.tbl_type .frm {
	padding: 0;
	text-align: center
}

.tbl_type .frm input {
	margin: 0
}

.tbl_type .num, .tbl_type .date, .tbl_type .hit {
	padding: 0;
	font-family: Tahoma;
	font-size: 11px;
	line-height: normal
}

.tbl_type .title {
	text-align: left
}

.tbl_type .title .pic, .tbl_type .title .new {
	margin: 0 0 2px;
	vertical-align: middle
}

article {
	margin-left: auto;
	text-align: center;
}

.grid {
	width: 70%;
	margin: auto;
}

table {
	margin-top: 5px;
	margin-bottom: 5px;
}

.grid-1 tr, .grid-1 th {
	border-left: solid 1.5px #999;
	padding-left: 10px;
	padding-right: 10px;
}

#no-border {
	border-left: none;
}

#writeBtn {
	border: 0;
	outline: 0;
	background-color: transparent;
}

#writeBtn img {
	height: 20px;
	width: 20px;
}

button:hover {
	cursor: pointer;
}

.grid-4 a {
	color: #383838;
}

#top3-title {
	background-color: #ad010c;
	color: white;
}

#total-title {
	background-color: #1E262D;
	color: white;
}

#hot {
	margin: auto;
	background-color: #ad010c;
	padding: 5px;
	width: 70%;
	color: white;
	border-radius: 15px;
	letter-spacing: 1px;
	animation: blink 1s linear infinite;
}

@
keyframes blink { 0% {
	color: white;
}

50
%
{
color
:
gold;
}
100
%
{
color
:
white;
}
}
.grid-4 img {
	width: 30px;
	height: 30px;
	margin: 5px 20px;
}
</style>

</head>
<body>
	<%@include file="./includes/header.jsp"%>

	<article>

		<div class="grid">
			<div>
				<table class="grid-1" align="right">
					<tr>
						<th id="no-border">${m_id}</th>

						<th>
							<!-- 글쓰기 --> <c:set var="m_id" value="${m_id}" /> <%-- 로그인이 돼있다면 --%>
							<c:if test="${!empty m_id}">
								<form action='writefrm'>
									<button id="writeBtn">
										<img class="writeimg" src="./image/write.png">
									</button>
								</form>
							</c:if> <%-- 로그인이 안돼있다면 --%> <c:if test="${empty m_id}">
								<form onsubmit="writealert()">
									<button id="writeBtn">
										<img class="writeimg" src="./image/write.png">
									</button>
								</form>
							</c:if>

						</th>

					</tr>
				</table>
			</div>
			<div class="grid-2">
				<table border="1" summary="게시판 top3" class="tbl_type">
					<caption>게시판 리스트</caption>
					<colgroup>
						<col width="80">
						<col>
						<col width="115">
						<col width="85">
						<col width="60">
						<col width="60">
					</colgroup>
					<thead>
						<tr>
							<th id="top3-title" scope="col" colspan="6" align="center">추천
								Top3</th>
						</tr>
					</thead>
					<thead>
						<tr>
							<th scope="col">&nbsp;</th>
							<th scope="col">제목</th>
							<th scope="col">글쓴이</th>
							<th scope="col">날짜</th>
							<th scope="col">조회수</th>
							<th scope="col">추천수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="board" items="${top3List}">
							<tr>

								<td class="num"><div id="hot">HOT</div></td>
								<td class="title"><a
									href="contents?b_num=${board.b_num}&b_id=${board.b_id}">
										${board.b_title}</a></td>
								<td align="center">${board.b_id}</td>
								<td align="center" class="date">${board.b_date}</td>
								<td align="center" class="hit">${board.b_views}</td>
								<td align="center">${board.b_thumbs}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="grid-3">
				<table border="1" summary="게시판 전체 리스트 최신순" class="tbl_type">
					<caption>게시판 리스트</caption>
					<colgroup>
						<col width="80">
						<col>
						<col width="115">
						<col width="85">
						<col width="60">
						<col width="60">
					</colgroup>
					<thead>
						<tr>
							<th id="total-title" scope="col" colspan="6" align="center">박제
								게시판</th>
						</tr>
					</thead>
					<thead>
						<tr>

							<th scope="col">No</th>
							<th scope="col">제목</th>
							<th scope="col">글쓴이</th>
							<th scope="col">날짜</th>
							<th scope="col">조회수</th>
							<th scope="col">추천수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="board" items="${bList}">
							<tr height="20">
								<td class="num">${board.b_num}</td>
								<td class="title"><a
									href="contents?b_num=${board.b_num}&b_id=${board.b_id}">
										${board.b_title}</a></td>
								<td align="center">${board.b_id}</td>
								<td class="date">${board.b_date}</td>
								<td class="hit">${board.b_views}</td>
								<td align="center">${board.b_thumbs}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<!-- 페이징 -->
			<div class="grid-4" align="center">${pageBtn}</div>

		</div>
	</article>
	<script type="text/javascript">
		function writealert() {
			alert("로그인 후 이용해주세요");
		}
	</script>

</body>
</html>