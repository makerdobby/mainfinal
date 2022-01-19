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
body{font-family:sans-serif;text-transform:uppercase;font-size:16px;color:#fff;overflow: scroll;margin: 0;}
a{text-decoration:none;color:#fff}
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
.mega-col{width:25%;float:left}

@media only screen and (max-width: 1170px) {
  nav >ul>li >a{padding:35px 15px}
}
@media only screen and (min-width: 960px) {
  nav{display:block!important}
}
@media only screen and (max-width: 959px) {
  nav{display:none;width:100%;clear:both;float:none;max-height:400px;overflow-y:scroll}
  #menu-icon{display:inline;top:45px;cursor:pointer}
  #menu-icon.active .first{transform:rotate(45deg);-webkit-transform:rotate(45deg);margin-top:10px}
  #menu-icon.active .second{transform:rotate(135deg);-webkit-transform:rotate(135deg);position:relative;top:-9px;}
  #menu-icon.active .third{display:none}
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



 .login-box {
    position: absolute;
	top: 85%;
    left: 30%;
    transform: translate(-50%, -50%);
    background: rgba(0,0,0,.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.6);
    border-radius: 10px;
  }
  
  .login-box h2 {
    margin: 0 0 30px;
    padding: 0;
    color: #fff;
    text-align: center;
  }
  
  .login-box .user-box {
    position: relative;
  }
  
  .login-box .user-box input {
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    margin-bottom: 30px;
    border: none;
    border-bottom: 1px solid #fff;
    outline: none;
    background: transparent;
  }
  .login-box .user-box label {
    position: absolute;
    top:0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    pointer-events: none;
    transition: .5s;
  }
  
  .login-box .user-box input:focus ~ label,
  .login-box .user-box input:valid ~ label {
    top: -20px;
    left: 0;
    color: #ffee02;
    font-size: 12px;
  }
  
  .login-box form a {
    position: relative;
    display: inline-block;
    padding: 10px 10px;
    color: #ffee02;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: .5s;
    margin-top: 00px;
    margin-left:50px;
    letter-spacing: 4px
  }
  
  .login-box input:hover {
    background: #ffee02;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px white,
                0 0 25px white,
                0 0 50px white,
                0 0 100px white;
  }
   
  .login-box span {
    position: absolute;
    display: block;
  }


#grid{
display:grid;
grid-template-columns: 0.7fr 0.3fr;	
justify-content: space-around;
font-size:20px;
width: 100%;

}




body>#grid{
padding: 50px;

}

#if{
width:100%;
background-color: white;
}

#video {
position: fixed;
top: 0px;
left: 0px;
width: 100vw;
height: 100vh;
z-index: -1;
overflow: hidden;
object-fit: cover;
}

.vv {
width: 230px;
}

.nn {
padding-bottom:5px;
}

#submit2 {
background:none;
color:white;
width:200px;
}

.mg1{
background-color:rgba( 0, 0, 0, 0.5 );
width: 700px;
height: 500px;
display: grid;
align-content: center;
justify-content: center;
border-radius:30px;
}

#iimg {
padding-top:-20px;
border-radius:30px;
}

.footer1 {
background-color:#1E262D;
bottom:0;
width:100%;
text-align:center;
font-size: 5px;
padding: 10px;
}


</style>

<body>

<%@include file="./includes/header.jsp" %>	

        <video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="./videos/animated-mount-targon.mp4">

</video>

<div id='grid'>
<form action="http://127.0.0.1:5000/tospring" method="GET"  target="param">
<div class="tbtb">
<div class="nn" style="display:flex;">
	<div class="vv">
	<span>1.자신팀의 총 킬:</span>
	</div>
	<input type="text" name="myteam_Kills" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>2.자신팀의 총 데스:</span>
	</div>
	<input type="text" name="myteam_Deaths" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>3.자신팀의 총 어시스트:</span>
	</div>
	<input type="text" name="myteam_Assists" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>4.자신팀의 총 골드:</span>
	</div>
	<input type="text" name="myteam_Golds" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>5.상대팀의 총 킬:</span>
	</div>
	<input type="text" name="vsteam_Kills" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>6.상대팀의 총 데스:</span>
	</div>
	<input type="text" name="vsteam_Deaths" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>7.상대팀의 총 어시스트:</span>
	</div>
	<input type="text" name="vsteam_Assists" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>8.상대팀의 총 골드:</span>
	</div>
	<input type="text" name="vsteam_Golds" required>
</div>
<div class="nn" style="display:flex;">
	<div class="vv">
	<span class='textw'>9.자신의 골드:</span>
	</div>
	<input type="text" name="my_golds" required>
</div>
<div class="login-box">
			 <span></span>
            <span></span>
            <span></span>
            <span></span>
	<input id="submit2"type='submit' value="알아보기" id='btn'>
</div>


</div>
</form>

<div class="mg1">

<!-- <div class="mg2"></div> -->
<img id='iimg' src="./image/help.png" width="600px"></img>
</div>
 

<div>
	<iframe id="if" name="param" class="embed-responsive-item"></iframe>
</div>
</div>

<script>
    function ifun(msg){
        alert(msg);
    }
    
    frame1.$('param').style.border = '10px solid black'
 // 전체
</script>

<%@include file="./includes/footer.jsp" %>	

</body>
</html>