<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!Doctype HTML>
<html>
<head>
  <style>
  body{
    margin:0px;
    padding: 0px;
    background-color:#121212;
    overflow: hidden;
    font-family: system-ui;
  }
  .clearfix{
    clear: both;
  }
  .logo{
    margin: 0px;
    margin-left: 28px;
      font-weight: bold;
      color: white;
      margin-bottom: 30px;
  }
  .logo span{
    color: #d5ab01;
  }
  .sidenav {
    height: 100%;
    width: 300px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #6b0730;
    overflow: hidden;
    transition: 0.5s;
    padding-top: 30px;
  }
  .sidenav a {
    padding: 15px 8px 15px 32px;
    text-decoration: none;
    font-size: 20px;
    color: #ebebeb;
    display: block;
    transition: 0.3s;
  }
  .sidenav a:hover {
    color: #f1f1f1;
    background-color:#1b203d;
  }
  .sidenav{
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
  }
  #main {
    transition: margin-left .5s;
    padding: 16px;
    margin-left: 300px;
  }
  .head{
    padding:20px;
  }
  .col-div-6{
    width: 50%;
    float: left;
  }
  .profile{
    display: inline-block;
    float: right;
    width: 160px;
  }
  .pro-img{
    float: left;
    width: 40px;
    margin-top: 5px;
  }
  .profile p{
    color: white;
    font-weight: 500;
    margin-left: 55px;
    margin-top: 10px;
    font-size: 13.5px;
  }
  .profile p span{
    font-weight: 400;
      font-size: 12px;
      display: block;
      color: #8e8b8b;
  }
  .col-div-3{
    width: 25%;
    float: left;
  }
  .box{
    width: 85%;
    height: 100px;
    background-color: #272c4a;
    margin-left: 10px;
    padding:10px;
  }
  .box p{
     font-size: 35px;
      color: white;
      font-weight: bold;
      line-height: 30px;
      padding-left: 10px;
      margin-top: 20px;
      display: inline-block;
  }
  .box p span{
    font-size: 20px;
    font-weight: 400;
    color: #818181;
  }
  .box-icon{
    font-size: 40px!important;
      float: right;
      margin-top: 35px!important;
      color: #818181;
      padding-right: 10px;
  }
  .col-div-8{
    margin-left:40vh;
    width: 70%;
    height: 70vh;
   background-color: #690b40;

  }
  .col-div-4{
    width: 30%;
    float: left;
  }
  .content-box{
    padding: 20px;
  }
  .content-box p{
    margin: 0px;
      font-size: 20px;
      color: #f7403b;
  }
  .content-box p span{
    float: right;
      background-color: #ddd;
      padding: 3px 10px;
      font-size: 15px;
  }
  .box-8, .box-4{
    width: 95%;
    background-color: #272c4a;
    height: 330px;
    
  }
  .nav2{
    display: none;
  }
  
  .box-8{
    margin-left: 10px;
  }
  table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    
  }
  td, th {
    text-align: left;
    padding:15px;
    color: #ddd;
    border-bottom: 1px solid #81818140;
  }
  .circle-wrap {
    margin: 50px auto;
    width: 150px;
    height: 150px;
    background: #e6e2e7;
    border-radius: 50%;
  }
  .circle-wrap .circle .mask,
  .circle-wrap .circle .fill {
    width: 150px;
    height: 150px;
    position: absolute;
    border-radius: 50%;
  }
  .circle-wrap .circle .mask {
    clip: rect(0px, 150px, 150px, 75px);
  }
  
  .circle-wrap .circle .mask .fill {
    clip: rect(0px, 75px, 150px, 0px);
    background-color: #f7403b;
  }
  .circle-wrap .circle .mask.full,
  .circle-wrap .circle .fill {
    animation: fill ease-in-out 3s;
    transform: rotate(126deg);
  }
  
  @keyframes fill {
    0% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(126deg);
    }
  }
  .circle-wrap .inside-circle {
    width: 130px;
    height: 130px;
    border-radius: 50%;
    background: #fff;
    line-height: 130px;
    text-align: center;
    margin-top: 10px;
    margin-left: 10px;
    position: absolute;
    z-index: 100;
    font-weight: 700;
    font-size: 2em;
    }
    .button {
    margin-top:8vh;
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    text-align: center;
    text-decoration: none;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  .button:hover {
    background-color: #45a049;
  }
  
  }</style>
	<title></title>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>


<body>
	
	<div id="mySidenav" class="sidenav">
	<p class="logo"><span>ADMIN</span> DASHBORD</p>
  <a href="index.jsp" class="icon-a"id="btn1"><i class="fa fa-dashboard icons"></i> &nbsp;&nbsp;Dashboard</a>
  <a href="#"class="icon-a" id="btn1" ><i class="fa fa-users icons"></i> &nbsp;&nbsp;Customers</a>
  <a href="#"class="icon-a" id="btn2" onclick="changeContent()"><i class="fa fa-video-camera"></i> &nbsp;&nbsp;Movies</a>
  <a href="#"class="icon-a" id="btn3"><i class="fa fa-tv"></i> &nbsp;&nbsp;Tv shows</a>
  <a href="#"class="icon-a" id="btn4"><i class="fa fa-tasks icons"></i> &nbsp;&nbsp;Feedbacks</a>
  <a href="#"class="icon-a" id="btn5"><i class="fa fa-user icons"></i> &nbsp;&nbsp;Accounts</a>


</div>
<div id="main">

	<div class="head">
		<div class="col-div-6">
<span style="font-size:30px;cursor:pointer; color: white;" class="nav"  >&#9776; Dashboard</span>
<span style="font-size:30px;cursor:pointer; color: white;" class="nav2"  >&#9776; Dashboard</span>
</div>
	
	<div class="col-div-6">
	<div class="profile">

		<img src="/Users/udeesharukshan/eclipse-workspace/rusiru-apache-9/src/main/webapp/images/Image.jpeg" class="pro-img" />
		<p>Udeesha Rukshan <span>Developer</span></p>
	</div>
</div>
	<div class="clearfix"></div>
</div>

	<div class="clearfix"></div>
	<br/>
	
	
		
	</div>
	<div class="clearfix"></div>
	<br/><br/>
	
	
	
	<script>
	function changeContent() {
		  var btn2 = document.getElementById("btn2");
		  btn2.style.backgroundColor = "#1b203d";
		  
		  var displayArea = document.getElementById("displayArea");
		  displayArea.innerHTML = "";
	}
	</script>
	
	

	<div class="col-div-8" id="displayArea">
		<table>
<c:forEach var="ad" items="${AdmDetails}">

<c:set var="id" value="${ ad.id}"/>
<c:set var="name" value="${ ad.name}"/>
<c:set var="email" value="${ ad.email}"/>
<c:set var="phone" value="${ ad.phone} }"/>
<c:set var="username" value="${ ad.username}"/>
<c:set var="password" value="${ ad.password}"/>
<tr>
<td>Admin ID
</td>
<td>
	${ad.id}
</td>
</tr>

<tr>
<td>
Admin Name
</td>
<td>
${ad.name}
</td>
</tr>

<tr>
<td>
Admin Email
</td>
<td>
${ad.email}
</td>
</tr>

<tr>
<td>Admin Phone
</td>
<td>
${ad.phone}
</td>
</tr>

<tr>
<td>Admin username
</td>
<td>
${ad.username}
</td>
</tr>

<tr>
<td>Admin Password
</td>
<td>
${ad.password}
</td>
</tr>
	

</c:forEach>
</table>
		


<c:url value="DeleteAdmin.jsp" var="Admdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	
	<a href="${Admdelete}">
	<input type="button" name="delete" value="Delete My Account" class="button">
	</a>
	
	<a href="AdminInsert.jsp">
	<input type="button" name="update" value="Insert Admin" class="button">
</a>
	</div>

	
 
		
	<div class="clearfix"></div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

  $(".nav").click(function(){
    $("#mySidenav").css('width','70px');
    $("#main").css('margin-left','70px');
    $(".logo").css('visibility', 'hidden');
    $(".logo span").css('visibility', 'visible');
     $(".logo span").css('margin-left', '-10px');
     $(".icon-a").css('visibility', 'hidden');
     $(".icons").css('visibility', 'visible');
     $(".icons").css('margin-left', '-8px');
      $(".nav").css('display','none');
      $(".nav2").css('display','block');
  });

$(".nav2").click(function(){
    $("#mySidenav").css('width','300px');
    $("#main").css('margin-left','300px');
    $(".logo").css('visibility', 'visible');
     $(".icon-a").css('visibility', 'visible');
     $(".icons").css('visibility', 'visible');
     $(".nav").css('display','block');
      $(".nav2").css('display','none');
 });

</script>

</body>


</html>
