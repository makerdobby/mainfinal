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
*, *:before, *:after {-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box;margin:0;padding:0}
body{background-color:#6E6E6E;font-family:sans-serif;text-transform:uppercase;font-size:16px;}
a{text-decoration:none;color: black;}
#header{background:#1E262D;width:100%;position:relative;}
#header a{color:white}
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
.mega-col{width:25%;float:left}

@media only screen and (max-width: 1170px) {
  nav >ul>li >a{padding:35px 15px}
}

@media only screen and (max-width: 959px) {
  nav{display:none;width:100%;clear:both;float:none;max-height:400px;overflow-y:scroll}

  .search{float:none}
  .search input{width:100%}
  nav{padding:10px}
  nav ul{float:none}
  nav li{float:none}
  nav ul li a{float:none;padding:8px;display:block}
  #header nav ul ul{display:block;position:static;background:none;border:none;padding:0}
  #header nav a{color:#fff;padding:8px}
  #header nav a:hover{background:#fff;color:#333;border-radius:3px}
  #header nav ul li li a:before{content:"- "}
  .mega-col{width:100%}
}
h3{
text-align: center;
}

#video {
     
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 100%;
     width: auto;
     height: auto;
     z-index: -1;
     overflow: hidden;
}

.runetitle12 {
padding-left:10px;
width:120px;

}

#rune_title, #rune_title2{
margin:5px;
width:50px;
height: 80px;


}

.rune2222 img, .rune4444 img {
border-radius: 70%;
background-color:black;
}


#rune_one_main, #rune_two_main {
border-radius: 70%;
background-color:black;
height:70px;

}
#rune_one {
color:white;
display:inline-block;
width:380px;
}
.rune1111 :hover {
border:#FFBF00 5px solid;
border-radius: 70%;
cursor: pointer;
}

.rune3333 :hover {
border:#FFBF00 5px solid;
border-radius: 70%;
cursor: pointer;
}


#champimg div img{
width: 20px;
height: 20px;


}



.runeone, .runetwo {
background:black;
border-radius: 70%;
width:60px;
object-fit: cover;
}

#rune_two{
display:none;
width:380px;
}
.runeone{
 border:solid 2px white;
}

.runetwo{
 border:solid 2px white;
}
.goodsynergy, .badsynergy{
border-radius : 30%;
width:30px;
object-fit: cover;
}
.goods, .bads{
margin-bottom: 5px;
margin-right: 5px;
display: inline-block;
}
.gs, .bs{
border: solid 3px #1E262D;
width: 140px;
height: 78px;
text-align: center;

background-color:#1E262D;

}

.gs span{
color:white;
}

.bs span{
color:white;
}

.main {
	display: flex;
    margin: 0 auto;
    width: 1120px;
    flex-wrap: wrap;
    justify-content: center;
}
.sub_synergy{
width: 1000px;
}
#goodsynergy, #badsynergy{
display: flex;
flex-wrap: wrap;
border: solid 3px #1E262D;
border-collapse: collapse;
justify-content: center;
backgroud-color:#1E262D;
background-color:rgba(255,255,255,0.3);
width:1120px;
margin: 0 auto;
margin-top:30px;
color:white;
}


div#skill div{
display: inline-table;
width : 64px;
}

#image33{
width:1100px;

height:220px;

overflow:hidden;  

margin:0 auto; 

object-fit:cover;

position:relative;

z-index:2;

top: -200px;

display:opacity;
}


#champimg{
text-align: left;
padding-left:100px;
position: absolute;
top: 120px;
color:white;
width:900px;
object-fit: cover;
text-shadow: 2px 2px 6px white;
}

.champimg {
float:left;
border-radius: 70%;

}

#cmgg{
text-align:center;
padding-top:15px;
width: 1120px;
margin: 0 auto;

}

#img14 {
 border: 2px solid black;  
 width:1100px;
 height:200px;
 object-fit:cover;
 overflow:hidden;
}

.cma1 {
font-weight:bold;
font-size:40px;
}

.champimg {
border: 6px solid #FFBF00;
}


.mid2 {
background-color:#1E262D;
border-radius:20px 20px 20px 20px;
width:600px;
height:350px;
color:white;
border: white 3px solid;
display:grid;
}

.mid4 {
background-color:#1E262D;
border-radius:20px 20px 20px 20px;
width:500px;
height:250px;
color:white;
border: white 3px solid;
display:grid;
}

.mid5 {
background-color:#1E262D;
border-radius:20px 20px 20px 20px;
width:500px;
height:350px;
color:white;
border: white 3px solid;
display:grid;
}


.mid3 {
text-align-last: center;
background-color: #1E262D;
border-radius: 20px 20px 20px 20px;
width: 600px;
height: 250px;
color: white;
border: white 3px solid;
display:grid;
}

.mid {
text-align-last: center;
background-color: #1E262D;
border-radius: 20px 20px 20px 20px;
width: 500px;
height: 250px;
color: white;
border: white 3px solid;
display:grid;
}


.ruru {
    display: flex;
    align-items: center;
    flex-direction: row;
	background:#1E262D;
	width:600px;
	border-radius:20px 20px 20px 20px;
	border: white 3px solid;
	height:250px;

	
}

.main22 {
text-align:center;
}

.spell{
border:#FFBF00 3px solid;
}

.staringitemone, .staringitemtwo {
border:#FFBF00 3px solid;
}

.mainitem {
border:#9A2EFE 3px solid;
}


#r11, #r33{
float:left;
}

#r22,#r44{
float:right;
}

.rune12{
width:450px;
color:white;
}

#rune_one_sub, #rune_two_sub {
border:white 2px solid;
}

.grgr, .bsbs {
font-size:12px;
}

.grgr2, .bsbs2 {
font-weight: bold;
}




</style>

</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
<body>

<%@include file="./includes/header.jsp" %>

<div class="main22">
<div id="cmgg" >
<img id="img14" src="./image/esports-worlds2017-art-1.jpg">
<div id="champimg" ><h2>Champion</h2></div>
</div>




<div class = "main">
<div class="ruru">
<div class="runetitle12">
<div id="rune_title"></div>
<div id="rune_title2"></div>
</div>
<div class = "rune12">
	<div id="rune_one" ><h3>Best Runes</h3>
	<div id="r11"></div><div id="r22"></div>
	</div>
	
	<div id="rune_two" ><h3>Best Runes</h3>
	<div id="r33"></div><div id="r44"></div>
	</div>
	</div>
	</div>
	
	
	<div class="mid"><h3>스펠</h3><div id="spell"></div></div>
	
	<div class="mid3"><h3>시작 아이템</h3><div id="starting_item_one"></div></div>
	
	<div class="mid4"><h3>스킬</h3><div id="skill"></div></div>
	
	<div class="mid2"><h3>신발</h3><div id="boots"></div></div>
	
	<div class="mid5"><h3>메인 아이템</h3><div id="main_item_build"></div></div>
	
	
</div>
</div>

<div class ="sub">
	<div id="goodsynergy"><div class="sub_synergy"><h3>GOOD 팀 조합</h3></div></div>
	<div id="badsynergy"><div class="sub_synergy"><h3>BAD 팀 조합</h3></div></div>
</div>

</body>

<script type="text/javascript">
let champinfo = ${champinfo}

let champimg = champinfo.champ_img;
let tier = champinfo.tier;
let position = champinfo.position;
let champname = champinfo.champname;
let runeone = champinfo.rune_img_one.split("|");
let runetwo = champinfo.rune_img_two.split("|");
let spell = champinfo.spell_img.split("|");
let staringitemone = champinfo.starting_item_img_one.split("|");
let staringitemtwo = champinfo.starting_item_img_two.split("|");
let mainitem = champinfo.main_item_build_img.split("|");
let boots = champinfo.boots_img.split("|");
let skill = champinfo.skill_img.split("|");
let skillkey = champinfo.skill_key.split("|");
let goodsynergy = champinfo.synergy_tier.split(",")[0].split("|");
let badsynergy = champinfo.synergy_tier.split(",")[1].split("|");
let goodcombinationscore = champinfo.combination_score.split(",")[0].split("|");
let badcombinationscore = champinfo.combination_score.split(",")[1].split("|");
let goodksynergy = champinfo.k_synergy.split(",")[0].split("|");
let badksynergy = champinfo.k_synergy.split(",")[1].split("|");

// 챔피언
str = "<img class='champimg' src="+champimg+">";
switch (tier){
	case "1":
		str += "<div class='cma1'>"+champname+"</div><div class='cma2'>티어 : <img src='./image/1.jpg'></div><div class='cma3'>역할군 : "+position+"</div>"
		break;
	case "2":
		str += "<div class='cma1'>"+champname+"</div><div class='cma2'>티어 : <img src='./image/2.jpg'></div><div class='cma3'>역할군 : "+position+"</div>"
		break;
	case "3":
		str += "<div class='cma1'>"+champname+"</div><div class='cma2'>티어 : <img src='./image/3.jpg'></div><div class='cma3'>역할군 : "+position+"</div>"
		break;
	case "4":
		str += "<div class='cma1'>"+champname+"</div><div class='cma2'>티어 : <img src='./image/4.jpg'></div><div class='cma3'>역할군 : "+position+"</div>"
		break;
	case "5":
		str += "<div class='cma1'>"+champname+"</div><div class='cma2'>티어 : <img src='./image/5.jpg'></div><div class='cma3'>역할군 : "+position+"</div>"
		break;
}
$("#champimg").append(str);

// 룬 1
for (let i=0; i<(runeone.length-2); i++){
	   if (i > 4){
	      str = "<img class='runeone' src="+runeone[i]+">";
	      $("#r22").append(str);
	      if (i == 5 || i == 7){
	         $("#r22").append("<br>");   
	      }
	      if(i == 7){
	         str = "<img class='runeone' src="+runeone[10]+">";
	         str += "<img class='runeone' src="+runeone[9]+">";
	         str += "<img class='runeone' src="+runeone[8]+">";
	         $("#r22").append(str);
	         $("#rune_one").append("<br><div class ='rune_one'>Pick : "+runeone[11]+" / Win : "+runeone[12]+"</div>");
	         break;
	      }
	   }
	   if(i==1){
		r = "<div class='rune6666' style='position:absolute;'; ><div class='rune1111'><img id='rune_one_main' class='rune_one_title' src="+runeone[1]+"></div>";
		r += "<div class='rune2222' style='position:relative;z-index:2 ; top:-35px  ; left:30px;'><img id='rune_one_sub' class='rune_title'src="+runeone[5]+"></div></div>";
		$("#rune_title").append(r);
	   }
	   if(i <5){
	      str = "<img class='runeone' src="+runeone[i]+">";
	      $("#r11").append(str);
	      if (i == 0 || i == 1 || i == 4){
	         $("#r11").append("<br>");      
	      }
	   }
	}


// 룬 2
for (let i=0; i<(runetwo.length-2); i++){
   if (i > 4){
      str = "<img class='runetwo' src="+runetwo[i]+">";
      $("#r44").append(str);
      if (i == 5 || i == 7){
         $("#r44").append("<br>");   
      }
      if(i == 7){
         str = "<img class='runetwo' src="+runetwo[10]+">";
         str += "<img class='runetwo' src="+runetwo[9]+">";
         str += "<img class='runetwo' src="+runetwo[8]+">";
         $("#r44").append(str);
         $("#rune_two").append("<div class ='rune_two'>Pick : "+runetwo[11]+" / Win : "+runetwo[12]+"</div>");
         break;
      }
   }
   if(i==1){
	r = "<div class='rune5555' style='position:absolute;'><div class='rune3333'><img id='rune_two_main' class='rune_two_title' src="+runetwo[1]+"></div>";
	r += "<div class='rune4444' style='position:relative;z-index:2 ; top:-35px  ; left:30px; ;' ><img id='rune_two_sub' class='rune_two_title' src="+runetwo[5]+"></div></div>";
	$("#rune_title2").append(r);
   }
   
   if(i <5){
      str = "<img class='runetwo' src="+runetwo[i]+">";
      $("#r33").append(str);
      if (i == 0 || i == 1 || i == 4){
         $("#r33").append("<br>");      
      }
   }
}

// 스펠
for (let i=0; i<2; i++){
	str = "<img class='spell' src="+spell[i]+">";
	$("#spell").append(str);
	if (i == 1){
		$("#spell").append("<br><span class ='spellpw'>Pick : "+spell[2]+" / Win : "+spell[3]+"</span>");
		$("#spell").append("<br>");
		for (let i=4; i<6; i++){
			str = "<img class='spell' src="+spell[i]+">";
			$("#spell").append(str);
			if (i == 5){
				$("#spell").append("<br><span class ='spellpw'>Pick : "+spell[6]+" / Win : "+spell[7]+"</span>");
				$("#spell").append("<br>");
			}
		}
	}
}

// 시작 아이템 1
for (let i in staringitemone){
	if (staringitemone[i].indexOf("%") == -1){
		str = "<img class='staringitemone' src="+staringitemone[i]+">";
		$("#starting_item_one").append(str);
	}
	else{
		$("#starting_item_one").append("<br><span class ='siopw'>Pick : "+staringitemone[i]+" / Win : "+staringitemone[staringitemone.length -1]+"</span>");
		$("#starting_item_one").append("<br>");
		break;
	}
}
// 시작 아이템 2
for (let i in staringitemtwo){
	if (staringitemtwo[i].indexOf("%") == -1){
		str = "<img class='staringitemtwo' src="+staringitemtwo[i]+">";
		$("#starting_item_one").append(str);
	}
	else{
		$("#starting_item_one").append("<br><span class ='siopw'>Pick : "+staringitemtwo[i]+" / Win : "+staringitemtwo[staringitemtwo.length -1]+"</span>");
		break;
	}
}

//신발
if (champname != "카시오페아"){
	if (boots[0].indexOf("NoShoes") == -1){
		str = "<img class='boots' src="+boots[0]+">";
		$("#boots").append(str);
		$("#boots").append("<br><span class ='bootspw'>Pick : "+boots[1]+" / Win : "+boots[2]+"</span>");
		$("#boots").append("<br>");
		if(boots[3].indexOf("NoShoes") == -1){
			str = "<img class='boots' src="+boots[3]+">";
			$("#boots").append(str);
			$("#boots").append("<br><span class ='bootspw'>Pick : "+boots[4]+" / Win : "+boots[5]+"</span>");
			$("#boots").append("<br>");
		}else{
			str =  "<img class='boots' src='./image/ddongsin.png'>";
			$("#boots").append(str);
			$("#boots").append("<br><span class ='bootspw'>Pick : "+boots[4]+" / Win : "+boots[5]+"</span>");
			$("#boots").append("<br>");
		}
	}
	else{
		str =  "<img class='boots' src='./image/ddongsin.png'>";
		$("#boots").append(str);
		$("#boots").append("<br><span class ='bootspw'>Pick : "+boots[1]+" / Win : "+boots[2]+"</span>");
		$("#boots").append("<br>");
		str = "<img class='boots' src="+boots[3]+">";
		$("#boots").append(str);
		$("#boots").append("<br><span class ='bootspw'>Pick : "+boots[4]+" / Win : "+boots[5]+"</span>");
		$("#boots").append("<br>");
	}
}
else{
	$("#boots").append("카시오페아는 신발을 신지 않습니다 !")
}


// 메인 아이템
for (let i=0; i<3; i++){
	str = "<img class='mainitem' src="+mainitem[i]+">";
	$("#main_item_build").append(str);
	if (i == 2){
		$("#main_item_build").append("<br><span class ='mainitempw'>Pick : "+mainitem[3]+" / Win : "+mainitem[4]+"</span>");
		$("#main_item_build").append("<br>");
		for (let j=5; j<8; j++){
			str = "<img class='mainitem' src="+mainitem[j]+">";
			$("#main_item_build").append(str);
			if (j == 7){
				$("#main_item_build").append("<br><span class ='mainitempw'>Pick : "+mainitem[8]+" / Win : "+mainitem[9]+"</span>");
				$("#main_item_build").append("<br>");
				for (let k=10; k<13; k++){
					str = "<img class='mainitem' src="+mainitem[k]+">";
					$("#main_item_build").append(str);
					if (k == 12){
						$("#main_item_build").append("<br><span class ='mainitempw'>Pick : "+mainitem[13]+" / Win : "+mainitem[14]+"</span>");
					}
				}
			}
		}
	}
}



// 스킬
for (let i in skill){
	if (skill[i].indexOf("%") == -1){
		str = "<div>"
		str += "<img class='skill' src="+skill[i]+"><br>";
		str += "<span>"+skillkey[i]+"</span></div>";
		if (i != 2){
			$("#skill").append(str+"->");
		}else{
			$("#skill").append(str);
		}
	}
	else{
		$("#skill").append("<br><span class ='skillpw'>Pick : "+skill[i]+" / Win : "+skill[skill.length -1]+"</span>");
		break;
	}
}

// 팀 조합
for (let i in goodsynergy){
	str = "<div class='goods'>"
	str += "<div class='gs'>"
	str += "<a href=./champinfo?championname="+goodsynergy[i]+">";
	if (goodsynergy[i] != "FiddleSticks"){
		str += "<img class='goodsynergy' src=http://ddragon.leagueoflegends.com/cdn/12.1.1/img/champion/"+goodsynergy[i]+".png><br>";
	}else{
		str += "<img class='goodsynergy' src=http://ddragon.leagueoflegends.com/cdn/12.1.1/img/champion/Fiddlesticks.png><br>";
	}
	str += "<span class='grgr'>"+goodksynergy[i]+"</span><br>";	
	str += "<span class='grgr2'>"+goodcombinationscore[i]+"</span>";
	str += "</div>"
	str += "</div>"
	$("#goodsynergy").append(str);
}

for (let i in badsynergy){
	str = "<div class='bads'>"
	str += "<div class='bs'>"
	str += "<a href=./champinfo?championname="+badsynergy[i]+">";
	if (badsynergy[i] != "FiddleSticks"){
		str += "<img class='badsynergy' src=http://ddragon.leagueoflegends.com/cdn/12.1.1/img/champion/"+badsynergy[i]+".png><br>";
	}else{
		str += "<img class='badsynergy' src=http://ddragon.leagueoflegends.com/cdn/12.1.1/img/champion/Fiddlesticks.png><br>";
	}
	str += "<span class='bsbs'>"+badksynergy[i]+"</span><br>";
	str += "<span class='bsbs2'>"+badcombinationscore[i]+"</span>";
	str += "</div>"
	str += "</div>"
	$("#badsynergy").append(str);
}
</script>
<script type="text/javascript">

$('#rune_one_main').click(function(){
	$('#rune_one').attr('style','display:inline-block');
	$('#rune_two').attr('style','display:none');
})

$('#rune_two_main').click(function(){
	$('#rune_two').attr('style','display:inline-block');
	$('#rune_one').attr('style','display:none');
})
</script>

</html>