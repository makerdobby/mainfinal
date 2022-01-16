<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>	
</head>
<style> 
body{
text-align: center;
}

#grid{
display:grid;
grid-template-columns: 0.5fr 0.5fr;	
justify-content: center;
font-size:20px;
}

body>#grid{
}

.s_link{
color: black;
padding: 25px;
font-size: 30px;
}


#link{
width: 100%; 
height: 50px;
padding-top: 25px;
fixed : top;
display:block;
}

#if{
width: 550px; 
height: 150px;
background-color: white;
}
#btn{
    width:100px;
    margin:auto;
}
#predict{
background-color: white;
display:block;
text-align: left;

}
#help{
position: absolute;
 left: 400px

	
}
</style>

<body>

<div id="link">
	<a href="/lol"><span class="s_link"><img alt="classicicon" src="./image/classicicon.png" width="30px" height="30px">홈</span></a>
	<a href="aram"><span class="s_link"><img alt="aramicon" src="./image/aramicon.png" width="30px" height="30px">칼바람</span></a>
	<a href=""><span class="s_link"><img alt="tfticon" src="./image/tfticon.png" width="30px" height="30px">박제게시판</span></a>
</div>

<div id=grid>
<form action="http://127.0.0.1:5000/tospring" method="GET"  target="param">
	<div>1.자신팀의 총 킬: &nbsp <input type="text" name="myteam_Kills"></div><br>
	<div>2.자신팀의 총 데스: &nbsp <input type="text" name="myteam_Deaths" ></div><br>
	<div>3.자신팀의 총 어시스트: &nbsp <input type="text" name="myteam_Assists" ></div><br>
	<div>4.자신팀의 총 골드: &nbsp <input type="text" name="myteam_Golds" ></div><br>
	<div>5.상대팀의 총 킬:&nbsp <input type="text" name="vsteam_Kills" ></div><br>
	<div>6.상대팀의 총 데스:&nbsp <input type="text" name="vsteam_Deaths" ></div><br>
	<div>7.상대팀의 총 어시스트:&nbsp<input type="text" name="vsteam_Assists" ></div><br>
	<div>8.상대팀의 총 골드:&nbsp <input type="text" name="vsteam_Golds" ></div><br>
	<div>9.자신의 골드:&nbsp <input type="text" name="my_golds" ></div><br>
	<div><input type='submit' value="알아보기" id='btn' class="btn btn-info"></div><br>
</form>

<img src="./image/help.png" width="700px"></img>
</div>
 

<div>
	<iframe id="if" name="param" class="embed-responsive-item"></iframe>
</div>

<script>
    function ifun(msg){
        alert(msg);
    }
 // 전체
</script>
	

</body>
</html>