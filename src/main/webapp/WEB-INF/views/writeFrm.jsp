<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h3>글쓰기</h3>
	<form action="./boardwrite" id="frm" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" id="b_title" name="b_title" required></td>
			</tr>
			<tr>
				<td>파일첨부</td>
				<td><input type="file" name="files" id="files" multiple  required>
					<!-- <input type="hidden" id="fileCheck" name="fileCheck" value="0"> -->
				 </td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="20" cols="60" id="b_contents" name="b_contents" required></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글작성">
					<input type="reset" id="reset" value="취소">
					<input type="button" onclick="location.href='/loginboardhome'" value="글목록"> 
				</td>
			</tr>

		</table>
	</form>
	
</body>


</html>








