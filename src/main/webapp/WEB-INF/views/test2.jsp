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
*, *:before, *:after {-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box;margin:0;padding:0}
body{font-family:sans-serif;text-transform:uppercase;font-size:16px;color:#fff;overflow: hidden;margin: 0;}
a{text-decoration:none;color:#fff}
#header{background:#1E262D;width:100%;position:relative}
#header:after{content:"";clear:both;display:block}
.search{float:right;padding:28px}
input{padding:10px;border-radius:20px}
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
.mega-col{width:25%;float:left}

body{
color:black;
position: absolute;
}


#grid{
display:grid;
grid-template-columns: 0.7fr 0.3fr;	
justify-content: space-around;
font-size:20px;
width: 100%;
}

td{
width : 1000px; 
}


body>#grid{
padding: 50px;

}

#if{
width:100%;
background-color: white;
}

</style>

<body>

<%@include file="./includes/header.jsp" %>	

<div id=grid>
<form action="http://127.0.0.1:5000/tospring" method="GET"  target="param">
<table id='predict'>
<tr>
	<td>1.자신팀의 총 킬:</td>
	<td><input type="text" name="myteam_Kills"></td>
</tr>
<tr>
	<td>2.자신팀의 총 데스:</td>
	<td><input type="text" name="myteam_Deaths"></td>
</tr>
<tr>
	<td>3.자신팀의 총 어시스트:</td>
	<td><input type="text" name="myteam_Assists"></td>
</tr>
<tr>
	<td>4.자신팀의 총 골드:</td>
	<td><input type="text" name="myteam_Golds"></td>
</tr>
<tr>
	<td>5.상대팀의 총 킬:</td>
	<td><input type="text" name="vsteam_Kills" ></td>
</tr>
<tr>
	<td>6.상대팀의 총 데스:</td>
	<td><input type="text" name="vsteam_Deaths" ></td>
</tr>
<tr>
	<td>7.상대팀의 총 어시스트:</td>
	<td><input type="text" name="vsteam_Assists" ></td>
</tr>
<tr>
	<td>8.상대팀의 총 골드:</td>
	<td><input type="text" name="vsteam_Golds" ></td>
</tr>
<tr>
	<td>9.자신의 골드:</td>
	<td><input type="text" name="my_golds" ></td>
</tr>
<tr>
	<td></td>
	<td><input type='submit' value="알아보기" id='btn'></td>
</tr>

<!-- 	<div>2.자신팀의 총 데스: &nbsp <input type="text" name="myteam_Deaths" ></div><br>
	<div>3.자신팀의 총 어시스트: &nbsp <input type="text" name="myteam_Assists" ></div><br>
	<div>4.자신팀의 총 골드: &nbsp <input type="text" name="myteam_Golds" ></div><br>
	<div>5.상대팀의 총 킬:&nbsp <input type="text" name="vsteam_Kills" ></div><br>
	<div>6.상대팀의 총 데스:&nbsp <input type="text" name="vsteam_Deaths" ></div><br>
	<div>7.상대팀의 총 어시스트:&nbsp<input type="text" name="vsteam_Assists" ></div><br>
	<div>8.상대팀의 총 골드:&nbsp <input type="text" name="vsteam_Golds" ></div><br>
	<div>9.자신의 골드:&nbsp <input type="text" name="my_golds" ></div><br>
	<div><input type='submit' value="알아보기" id='btn' class="btn btn-info"></div><br> -->
</table>
</form>

<img src="./image/help.png" width="600px"></img>

 

<div>
	<iframe id="if" name="param" class="embed-responsive-item"></iframe>
</div>
</div>

<script>
    function ifun(msg){
        alert(msg);
    }
 // 전체
</script>
	

</body>
</html>