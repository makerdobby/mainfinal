<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/jquery.serializeObject.js"></script>
<style>

</style>
<title>${board.b_title}</title>

<script type="text/javascript">
$(function() {
	let chkid = ${check_t_id};
	console.log(chkid);
	if (chkid == 1) { //추천한 적이 있다
		$('#thumbsdown').attr('style','display:none');
		$('#thumbsup').css('display','inline');
	}else if(chkid == 0){
		$('#thumbsdown').attr('style','display:inline');
		$('#thumbsup').css('display','none');
	}else{
		$('#thumbsdown').attr('style','display:inline');
		$('#thumbsdown').attr('style','pointer-events: none');
		$('#thumbsup').css('display','none');
		
	}
	
});

	
</script>
<style type="text/css">

body {
	font-family: sans-serif;
	text-transform: uppercase;
	font-size: 16px;
	overflow: hidden;
	margin: 0;
}
a, button{
	cursor: pointer;
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

/* 노말라이즈 */
body, ul, li, h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
	list-style: none;
}

a:link {
	color: lightblue;
}

/* 라이브러리 */
.con {
	margin: 0 auto;
}

.img-box>img {
	width: 100%;
	display: block;
}

.row::after {
	content: "";
	display: block;
	clear: both;
}

.cell {
	float: left;
	box-sizing: border-box;
}

.cell-right {
	float: right;
	box-sizing: border-box;
}
#cell-right {
	float: right;
	box-sizing: border-box;
}

.margin-0-auto {
	margin: 0 auto;
}

.block {
	display: block;
}

.inline-block {
	display: inline-block;
}

.text-align-center {
	text-align: center;
}

.line-height-0-ch-only {
	line-height: 0;
}

.line-height-0-ch-only>* {
	line-height: normal;
}

.relative {
	position: relative;
}

.absolute-left {
	position: absolute;
	left: 0;
}

.absolute-right {
	position: absolute;
	right: 0;
}

.absolute-middle {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
}

/* 커스텀 */
/* 반응형 레이아웃 */
.con {
	max-width: 950px;
}

.con-min-width {
	min-width: 320px;
}

.top-menu a, .top-menu button {
	text-decoration: none;
	color: gray;
	font-weight: bold;
	font-size: 1.2rem;
}

html, body {
	overflow-x: hidden;
}

.table-common>table {
	width: 100%;
	border-collapse: collapse;
}

.table-common .btn-box {
	text-align: center;
}

.reply-title {
	display: block;
}

.reply-title th {
	font-weight: bold;
	margin: 0 auto;
	padding: 10px;
	text-align: center;
}

.table-common>table th, .table-common>table td {
	border: 1px solid black;
	padding: 10px;
}

.article-detail {
	border: 2px solid lightgray;
}

.article-detail>table {
	border: none;
	width: calc(100% - 100px);
}

.article-detail>table th, .article-detail>table td {
	border: none;
}

.article-detail>table tr:not(:last-child) {
	border-bottom: 1px solid lightgray;
}

.article-detail>table tr:not(.article-body), .article-detail>table tr:not(.article-body)>td
	{
	height: 20px;
	font-size: 0.8rem;
}

.article-detail>table tr.article-title>td {
	height: 40px;
	font-weight: bold;
	font-size: 1.2rem;
}

.article-detail>table td:last-child {
	padding-right: 100px;
}

.article-detail>.article-writer {
	width: 100px;
	height: 102px;
	background-color: lightgray;
	border-bottom: 1px solid lightgray;
	text-align: center;
}

.article-detail>.article-writer .writer-icon {
	margin: 0 auto;
	background-color: white;
	width: 80px;
	height: 80px;
	border-radius: 50%;
}

.reply {
	margin-top: 20px;
	border: 2px solid lightgray;
	padding: 15px;
	box-sizing: border-box;
}

.reply-form {
	padding: 10px;
}

.human-img {
	width: 20px;
	height: 20px;
	vertical-align: middle;
}

.reply-form>form input[type="text"] {
	width: 200px;
	border: none;
	vertical-align: middle;
	font-weight: bold;
}

.reply-form>form textarea {
	width: calc(100% - 100px);
	min-height: 40px;
	vertical-align: middle;
}

.reply-form>form input[type="submit"] {
	width: 80px;
	height: 40px;
	transform: translatey(-40%);
	vertical-align: middle;
}

.reply-form>form>div:not(:last-child) {
	margin-bottom: 5px;
}

.reply-list>table {
	border: none;
}

.reply-list>table th {
	display: none;
}

.reply-list>table td {
	border: none;
}

.reply-list>table tr:nth-child(2n+1) {
	background-color: rgba(0, 0, 0, 0.06);
}

.reply-list>table td:first-child {
	font-weight: bold;
}

.thumb-img {
	height: 30px;
	width: 30px;
}

button {
	border: 0;
	outline: 0;
	background-color: transparent
}

button:hover {
	cursor: pointer;
}

#cell-right img{
width: 30px;
height: 30px;
margin: 5px;

}
#cell-right input{

background: url("./image/delete.png") no-repeat;
width: 20px;
height: 20px;
margin: 5px;
border: none;
cursor: pointer;
}
</style>
</head>
<body>
<%@include file="./includes/header.jsp"%>
	<header class="top-menu con row">
		<div id="cell-right">
			<!-- 글목록 버튼  -->
			<a href="loginboardhome"><img src="./image/list.png"></a>
			
			<!-- 글삭제 버튼 -->
			${delBtn}
		</div>
	</header>

	<section class="article-detail table-common con row">
		<table class="cell" border="1">
			<colgroup>
				<col width="100px">
			</colgroup>
			<tbody>
				<tr class="article-title">
					<th>제목</th>
					<td colspan="4">[${board.b_num}] ${board.b_title}</td>
				</tr>
				<tr class="article-info">

					<th>날짜</th>
					<td>${board.b_date}</td>
					<th>조회수</th>
					<td>${board.b_views}</td>
					<th>
						<button id="thumbsdown" onclick="addThumbs()">
							<img class="thumb-img" src="./image/thumbsdown.png">
						</button>
						<button id="thumbsup" onclick="showalert()">
							<img class="thumb-img" src="./image/thumbsup.png">
						</button>
					</th>
					<td><div class="showthumbs">${board.b_thumbs}</div></td>

				</tr>
				<tr class="article-body">
					<td colspan="4">
						<div class="article-writer cell">
							<div class="writer-icon">
								<c:set var="files" value="${bfList}" />
								
								<c:if test="${empty files}">첨부된 파일이 없습니다.</c:if>
								<c:if test="${!empty files}">
									<c:forEach var="file" items="${files}">
										<img src="upload/${file.bf_sysName}" width=100%>
										<br>
									</c:forEach>
								</c:if>
							</div>
						</div> <br> <br> ${board.b_contents}
					</td>
				</tr>
			</tbody>
		</table>
	</section>

	<div class="con reply">
		<h1 class="">댓글 입력</h1>
		<section class="reply-form">
			<form id="rFrm" name="rFrm">
				<div>
					<img class="human-img" src="./image/human.png"><input
						type="text" value="${m_id}" readonly>
				</div>
				<div>
					<textarea rows="3" cols="50" name="r_contents" id="r_contents"> </textarea>
					<input type="button" value="댓글전송" onclick="replyInsert(${board.b_num})"
						style="width: 80px; height: 40px">
				</div>
			</form>
		</section>

		<h1 class="">댓글 목록</h1>

		<table class="reply-title">
			<tr height='20' align='center'>
				<th width="238.95px">작성자</th>
				<th width="238.95px">내용</th>
				<th width="438.1px">날짜</th>
			</tr>
		</table>
		<section class="reply-list table-common">
			<table id="rTable">
				<tbody>
					<c:forEach var="reply" items="${rList}">
						<tr height="20" align="center">
							<td width='100'>${reply.r_id}</td>
							<td width='100'>${reply.r_contents}</td>
							<td width='200'>${reply.r_date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>

</body>

<script type="text/javascript">

function replyInsert(bNum){
	//text = $("#r_contents").val()
	let obj=$("#rFrm").serializeObject(); // 폼의 모든 데이터를 js객체로 변환
	// 폼데이터 --> js객체 --> json --> 서버 --> 자바객체
	// 단, file태그로 받아오는건 변환하지 못한다.
	obj.r_bnum = bNum;
	
	let json = JSON.stringify(obj); // <--> JSON.parse(json)
	
	$.ajax({
		type:"post",
		url:"rest/replyinsert", // 'list/member/10' , 'list/board/10'
		data : json,
		//urlencoded 방식이 아닌 json형태의 데이터를 서버에 넘긴다.
		contentType:"application/json; charset=UTF-8",
		dataType:"json",
		success: function(data){
			console.log(data);
 			$("#rTable").empty();
			for (let i in data){
				str = "<tr height='20' align='center'>";
				str += "<td width='100'>"+data[i].r_id+"</td>";
				str += "<td width='100'>"+data[i].r_contents+"</td>";
				str += "<td width='200'>"+data[i].r_date+"</td></tr>";
				$("#rTable").append(str);
			}
			$('#r_contents').val("");
			$('#r_contents').focusin();

		},
		error: function(error){
			console.log(error);
		}
	});
	
};

// 회색이미지 클릭시 추천 +1

function addThumbs(){
	
	$('#thumbsdown').attr('style','display:none');
	$('#thumbsup').css('display','inline');
	   $.ajax({
			url: "rest/addthumbs",
            type: "post",
            data: {
                t_num: ${board.b_num},
	  			t_id: ${m_id}
            },
            
            
            success: function (count) {
            	console.log(count)
            	 if( ${board.b_thumbs} == count){
            		/*  $('#thumbsdown').attr('style','pointer-events : none'); */
					/* $('#thumbsdown').attr('style','display:none'); */
            		return;
            	 }
            	else{            	
	            	$(".showthumbs").html(count);
            	} 
            		
            },
            error: function (err ) {
            	
            	console.log(err);
            	
            }
		})
	};
	
function showalert(){
	alert("이미 추천한 게시글입니다.");
};
	


</script>
</html>