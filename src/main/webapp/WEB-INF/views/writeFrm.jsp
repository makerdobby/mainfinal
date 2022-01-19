<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
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

nav input {
	border: none;
	padding: 10px;
	border-radius: 20px;
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
	border-top: solid 1px #999;
	border-bottom: solid 1px #b2b2b2;
	background-color: #f1f1f4;
	color: #333;
	font-weight: bold;
	line-height: 18px;
	vertical-align: top
}

.tbl_type td {
	padding: 8px 0 5px;
	border-bottom: solid 1px #d2d2d2;
	text-align: center
}

.tbl_type .frm {
	padding: 0;
	text-align: center;
}

.tbl_type .frm input {
	margin: 0;
	padding: 10px;
}

.tbl_type .num, .tbl_type .date, .tbl_type .hit {
	padding: 0;
	font-family: Tahoma;
	font-size: 11px;
	line-height: normal
}

.tbl_type .title {
	text-align: center;
	font-weight: bold;
}

.tbl_type .box {
	text-align: left;
	font-weight: bold;
}

.tbl_type .box input {
	border: solid 1px #999;
	width: 450px;
}

.tbl_type input {
	padding: 10px;
}

.tbl_type input:hover {
	cursor: pointer;
}

.tbl_type .title .pic, .tbl_type .title .new {
	margin: 0 0 2px;
	vertical-align: middle
}
</style>
</head>
<body>
	<%@include file="./includes/header.jsp"%>
	<form action="./boardwrite" id="frm" method="post"
		enctype="multipart/form-data">
		<table class="tbl_type">
			<colgroup>
				<col width="300">
				<col width="500">
			</colgroup>
			<tr>
				<td class="title">제목</td>
				<td class="box"><input type="text" id="b_title" name="b_title"
					required></td>
			</tr>
			<tr>
				<td class="title">파일첨부</td>
				<td class="box"><input type="file" name="files" id="files"
					multiple required> <!-- <input type="hidden" id="fileCheck" name="fileCheck" value="0"> -->
				</td>
			</tr>
			<tr>
				<td class="title">내용</td>
				<td class="box"><textarea rows="20" cols="60" id="b_contents"
						name="b_contents" required></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="글작성"> <input type="reset" id="reset" value="취소">
					<input type="button" onclick="location.href='loginboardhome'"
					value="글목록"></td>
			</tr>

		</table>
	</form>

</body>


</html>








